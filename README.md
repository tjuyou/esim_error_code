# eSIM 错误码查询助手

一个基于 Flutter Web 的 eSIM/eUICC 错误码解码工具，帮助开发者和支持团队快速理解 Android eSIM 相关错误。

## 项目简介

本应用根据 **GSMA SGP.22 v2.2** 规范实现错误码解码，将复杂的 32 位错误码整数转换为可读的错误信息。支持：

- 解析操作码（Operation Code）
- 解析错误码（Error Code）
- 解析 Subject Code 和 Reason Code
- 提供 GSMA 规范中的详细错误说明

## 技术栈

- **Flutter**: 3.47.1 (FVM 管理)
- **Dart SDK**: ^3.6.0
- **目标平台**: Web (支持 Chrome, Edge, Firefox 等现代浏览器)

## 核心依赖

- [GetX](https://pub.dev/packages/get) ^4.7.3 - 状态管理、路由、依赖注入
- [flutter_intl](https://pub.dev/packages/intl_utils) ^2.8.16 - 国际化
- [syncfusion_flutter_datagrid](https://pub.dev/packages/syncfusion_flutter_datagrid) ^34.2.5 - 数据表格展示
- [flutter_easyloading](https://pub.dev/packages/flutter_easyloading) ^4.0.2 - 加载指示器
- [fluttertoast](https://pub.dev/packages/fluttertoast) ^10.0.0 - Toast 提示
- [cupertino_icons](https://pub.dev/packages/cupertino_icons) ^1.0.9 - iOS 图标

## 功能特性

✅ 支持 4 种语言：中文、英文、西班牙语、俄语
✅ 解码 GSMA SGP.22 标准错误码
✅ 提供详细的错误原因和解决方案
✅ 支持在线访问，无需安装

## 快速开始

### 环境要求

- Flutter SDK 3.6.0 或更高版本
- Dart SDK 3.6.0 或更高版本
- 支持 Web 的浏览器
- **推荐使用 FVM 管理 Flutter 版本** (当前项目使用 Flutter 3.47.1)

### 安装与运行

```bash
# 1. 克隆项目
git clone <repository-url>
cd esim_error_code

# 2. 如果使用 FVM，安装并使用指定版本
fvm install 3.47.1
fvm use 3.47.1

# 3. 安装依赖
flutter pub get

# 4. 生成国际化文件
flutter pub run intl_utils:generate

# 5. 运行 Web 应用（开发模式）
flutter run -d chrome

# 6. 构建 Web 生产版本（CanvasKit 内置打包）
flutter build web --release
```

构建产物位于 `build/web/` 目录，可部署到任何静态文件服务器。

### CanvasKit 内置打包说明

本项目已配置为**内置打包 CanvasKit-WASM**，不会从 CDN 远程拉取，提高加载速度和可靠性：

- ✅ **内置 CanvasKit**: `build/web/canvaskit/` 目录包含所有 WASM 文件
- ✅ **配置文件**: `web/index.html` 中已配置 `window.flutterCanvasKitBaseUrl`
- ✅ **离线可用**: 无需联网即可正常加载和运行
- ✅ **版本锁定**: CanvasKit 版本与 Flutter 版本一致，确保兼容性

**注意事项**：
- 构建产物约 **10-15MB**（包含 CanvasKit WASM 文件）
- 首次加载会下载所有 WASM 文件

### 部署优化

详细的部署优化配置请参考 `web/DEPLOYMENT.md`，包括：

- ✅ HTTP/2 配置（提升 30-50% 加载速度）
- ✅ Gzip/Brotli 压缩（减少 60-70% 文件体积）
- ✅ 缓存策略配置（二次访问提速 80-90%）
- ✅ CDN 加速配置（降低 50-70% 全球访问延迟）
- ✅ Nginx/Apache 配置示例
- ✅ 自动化部署脚本

优化后首次加载预计 **3-5 秒**，二次访问 **1-2 秒**。

## 开发指南

### 项目结构

```
lib/
├── code/                          # 核心业务逻辑
│   ├── error_code.dart            # GSMA 错误码定义
│   ├── extract_util.dart          # 错误码解码
│   └── detailed_error_messages_util.dart  # 错误信息生成
├── pages/                          # UI 页面
│   ├── home/                       # 主页（输入错误码）
│   ├── decode/                     # 解码结果展示
│   └── subject_reason/             # Subject/Reason 详情
├── routes/                         # 路由配置
├── service/                        # 全局服务
└── l10n/                          # 国际化资源
```

### 常用命令

```bash
# 代码分析
flutter analyze

# 运行测试
flutter test

# 自动修复 lint 问题
dart fix --apply

# 清理构建缓存
flutter clean
```

## 国际化

项目支持多语言，语言文件位于 `lib/l10n/intl_*.arb`：

- `intl_zh.arb` - 中文
- `intl_en.arb` - 英文
- `intl_es.arb` - 西班牙语
- `intl_ru.arb` - 俄语

修改语言文件后需重新生成：

```bash
flutter pub run intl_utils:generate
```

## 部署

### 静态文件部署

构建后的 Web 应用是纯静态文件，可部署到：

- GitHub Pages
- Netlify
- Vercel
- Nginx/Apache 服务器
- 任何支持静态文件托管的平台

示例部署命令：

```bash
# 构建
flutter build web --release

# 产物位于 build/web/ 目录
# 将此目录内容上传到服务器即可
```

## GSMA SGP.22 规范说明

本应用实现了 GSMA Remote SIM Provisioning (RSP) 规范中的错误码解析：

- **Operation Code**: 操作类型（下载、切换、删除等）
- **Error Code**: 具体错误
- **Subject Code**: 错误来源组件（eUICC、Profile、SM-DP+ 等）
- **Reason Code**: 错误原因（访问错误、格式错误等）

## 许可证

本项目仅供内部使用，不对外发布。

## 联系方式

如有问题或建议，请联系项目维护团队。