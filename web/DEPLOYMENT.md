# Flutter Web 部署优化配置

本文档提供详细的部署优化配置方案，包括 HTTP/2、压缩、缓存策略和 CDN 配置。

## 1. 启用 HTTP/2

### Nginx 配置
```nginx
server {
    listen 443 ssl http2;
    server_name your-domain.com;

    ssl_certificate /path/to/cert.pem;
    ssl_certificate_key /path/to/key.pem;

    root /var/www/esim_error_code/build/web;
    index index.html;

    # HTTP/2 推送关键资源
    http2_push /main.dart.js;
    http2_push /flutter.js;
    http2_push /canvaskit/canvaskit.wasm;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

### Apache 配置
```apache
<VirtualHost *:443>
    Protocols h2 http/1.1
    ServerName your-domain.com
    DocumentRoot /var/www/esim_error_code/build/web

    SSLEngine on
    SSLCertificateFile /path/to/cert.pem
    SSLCertificateKeyFile /path/to/key.pem
</VirtualHost>
```

## 2. 启用 Gzip/Brotli 压缩

### Nginx 压缩配置
```nginx
# 全局压缩配置
gzip on;
gzip_vary on;
gzip_proxied any;
gzip_comp_level 6;
gzip_min_length 256;
gzip_types
    application/javascript
    application/wasm
    application/json
    text/css
    text/xml
    text/plain
    text/javascript;

# Brotli 压缩（需要安装 ngx_brotli 模块）
brotli on;
brotli_comp_level 6;
brotli_types
    application/javascript
    application/wasm
    application/json
    text/css
    text/xml
    text/plain
    text/javascript;

server {
    # ... 其他配置

    location ~* \.(wasm|js|css)$ {
        gzip_static on;
        brotli_static on;
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
}
```

### 构建时预压缩
在部署前预先生成压缩文件：

```bash
# 构建项目
flutter build web --release

# 预压缩文件（Nginx 可以直接使用 .gz 文件）
cd build/web
find . -type f \( -name "*.js" -o -name "*.wasm" -o -name "*.css" \) -exec gzip -9 -k {} \;
find . -type f \( -name "*.js" -o -name "*.wasm" -o -name "*.css" \) -exec brotli -9 -k {} \;

# 部署
rsync -avz build/web/ user@server:/var/www/esim_error_code/
```

## 3. 配置缓存策略

### Nginx 缓存配置
```nginx
server {
    # 静态资源长期缓存（1年）
    location ~* \.(wasm|js|css|png|jpg|jpeg|gif|ico|svg|woff|woff2|ttf|eot)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
        add_header Vary "Accept-Encoding";
    }

    # HTML 文件短期缓存（1小时）
    location ~* \.html$ {
        expires 1h;
        add_header Cache-Control "public, must-revalidate";
    }

    # index.html 不缓存（确保用户总是获取最新版本）
    location = /index.html {
        add_header Cache-Control "no-cache, no-store, must-revalidate";
        add_header Pragma "no-cache";
        add_header Expires "0";
    }

    # Service Worker 短期缓存
    location = /flutter_service_worker.js {
        expires 1h;
        add_header Cache-Control "public, must-revalidate";
    }
}
```

### Apache 缓存配置
```apache
# 启用 mod_expires 和 mod_headers
LoadModule expires_module modules/mod_expires.so
LoadModule headers_module modules/mod_headers.so

<IfModule mod_expires.c>
    ExpiresActive On

    # 静态资源长期缓存
    ExpiresByType application/javascript "access plus 1 year"
    ExpiresByType application/wasm "access plus 1 year"
    ExpiresByType text/css "access plus 1 year"
    ExpiresByType image/png "access plus 1 year"
    ExpiresByType image/jpeg "access plus 1 year"
    ExpiresByType image/gif "access plus 1 year"
    ExpiresByType image/svg+xml "access plus 1 year"

    # HTML 短期缓存
    ExpiresByType text/html "access plus 1 hour"
</IfModule>

<IfModule mod_headers.c>
    # index.html 不缓存
    <FilesMatch "index\.html$">
        Header set Cache-Control "no-cache, no-store, must-revalidate"
        Header set Pragma "no-cache"
        Header set Expires "0"
    </FilesMatch>

    # 静态资源添加不可变标记
    <FilesMatch "\.(js|wasm|css|png|jpg|gif|svg)$">
        Header set Cache-Control "public, immutable"
    </FilesMatch>
</IfModule>
```

## 4. 使用 CDN 加速

### 静态资源 CDN 配置

#### 方案1：将静态资源托管到 CDN

```html
<!-- 修改 web/index.html -->
<script>
  // 强制使用本地 CanvasKit，不从 CDN 拉取
  window.flutterCanvasKitBaseUrl = "https://your-cdn.com/canvaskit/";
</script>
```

构建后将静态资源上传到 CDN：

```bash
# 构建项目
flutter build web --release

# 上传静态资源到 CDN（示例：使用阿里云 OSS）
ossutil cp -r build/web/ oss://your-bucket/esim_error_code/ --update

# 或者使用七牛云
qshell qupload cdn_config.json

# 或者使用腾讯云 COS
coscmd upload -r build/web/ /esim_error_code/
```

#### 方案2：使用 CDN 回源

配置 CDN 回源到您的服务器：

```nginx
# Nginx 配置
server {
    listen 80;
    server_name your-origin-server.com;

    root /var/www/esim_error_code/build/web;

    # 允许 CDN 回源
    add_header Access-Control-Allow-Origin *;
    add_header Access-Control-Allow-Methods "GET, OPTIONS";

    location / {
        try_files $uri $uri/ =404;
    }
}
```

CDN 配置（以阿里云 CDN 为例）：
- 加速域名：`cdn.your-domain.com`
- 回源地址：`your-origin-server.com`
- 缓存规则：
  - `.wasm`, `.js`, `.css` 文件：缓存 365 天
  - `.html` 文件：缓存 1 小时
  - `index.html`：不缓存

### CDN 配置示例（各大平台）

#### 阿里云 CDN
```json
{
  "DomainName": "cdn.your-domain.com",
  "Sources": [
    {
      "Type": "domain",
      "Source": "your-origin-server.com",
      "Priority": 20
    }
  ],
  "CacheConfig": {
    "CacheContent": [
      {
        "Path": "/*.wasm",
        "TTL": 31536000,
        "Weight": 100
      },
      {
        "Path": "/*.js",
        "TTL": 31536000,
        "Weight": 90
      },
      {
        "Path": "/index.html",
        "TTL": 0,
        "Weight": 100
      }
    ]
  }
}
```

#### 腾讯云 CDN
```json
{
  "Host": "cdn.your-domain.com",
  "Origin": {
    "Origins": [
      {
        "Type": "domain",
        "Domain": "your-origin-server.com"
      }
    ]
  },
  "Cache": {
    "SimpleCache": {
      "CacheRules": [
        {
          "CacheType": "path",
          "CacheContents": ["/canvaskit/*"],
          "CacheTime": 31536000
        },
        {
          "CacheType": "path",
          "CacheContents": ["/index.html"],
          "CacheTime": 0
        }
      ]
    }
  }
}
```

## 5. 部署脚本示例

### 完整部署脚本
```bash
#!/bin/bash
# deploy.sh

PROJECT_NAME="esim_error_code"
BUILD_DIR="build/web"
DEPLOY_USER="user"
DEPLOY_SERVER="your-server.com"
DEPLOY_PATH="/var/www/$PROJECT_NAME"

echo "🚀 开始构建..."
flutter clean
flutter build web --release

echo "📦 预压缩文件..."
cd $BUILD_DIR
find . -type f \( -name "*.js" -o -name "*.wasm" -o -name "*.css" \) -exec gzip -9 -k {} \;

echo "🚚 部署到服务器..."
rsync -avz --delete . $DEPLOY_USER@$DEPLOY_SERVER:$DEPLOY_PATH/

echo "🔄 重启服务..."
ssh $DEPLOY_USER@$DEPLOY_SERVER << 'EOF'
    sudo systemctl reload nginx
    echo "✅ 部署完成!"
EOF
```

### 自动化部署（GitHub Actions）
```yaml
# .github/workflows/deploy.yml
name: Deploy Flutter Web

on:
  push:
    branches: [main]

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3

    - name: Setup Flutter
      uses: subosito/flutter-action@v2
      with:
        flutter-version: '3.47.1'

    - name: Build Web
      run: |
        flutter pub get
        flutter pub run intl_utils:generate
        flutter build web --release

    - name: Compress Files
      run: |
        cd build/web
        find . -type f \( -name "*.js" -o -name "*.wasm" -o -name "*.css" \) -exec gzip -9 -k {} \;

    - name: Deploy to Server
      uses: easingthemes/ssh-deploy@main
      env:
        SSH_PRIVATE_KEY: ${{ secrets.SSH_PRIVATE_KEY }}
        REMOTE_HOST: ${{ secrets.REMOTE_HOST }}
        REMOTE_USER: ${{ secrets.REMOTE_USER }}
        SOURCE: "build/web/"
        TARGET: "/var/www/esim_error_code"
        ARGS: "-avz --delete"
```

## 6. 性能监控

### 使用 Lighthouse 测试
```bash
# 安装 Lighthouse
npm install -g lighthouse

# 测试网站性能
lighthouse https://your-domain.com --view
```

### 使用 WebPageTest
访问 https://www.webpagetest.org/ 进行详细的性能测试。

### 关键指标
- **首次内容绘制 (FCP)**: < 1.8 秒
- **最大内容绘制 (LCP)**: < 2.5 秒
- **首次输入延迟 (FID)**: < 100ms
- **累积布局偏移 (CLS)**: < 0.1

## 7. 常见问题

### Q: CanvasKit 加载失败？
A: 检查 MIME 类型配置：
```nginx
# Nginx 配置
types {
    application/wasm wasm;
}
```

### Q: 跨域问题？
A: 配置 CORS：
```nginx
add_header 'Access-Control-Allow-Origin' '*';
add_header 'Access-Control-Allow-Methods' 'GET, OPTIONS';
```

### Q: Service Worker 更新问题？
A: 确保 index.html 不被缓存，并设置版本号。

## 8. 优化效果预估

- **HTTP/2**: 加载速度提升 30-50%
- **Gzip/Brotli**: 文件体积减少 60-70%
- **缓存策略**: 二次访问加载速度提升 80-90%
- **CDN**: 全球访问延迟降低 50-70%

综合优化后，首次加载时间预计可控制在 3-5 秒内，二次访问可控制在 1-2 秒内。