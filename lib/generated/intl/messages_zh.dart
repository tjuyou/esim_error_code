// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  static String m0(carrier) => "您的设备已被${carrier}锁定。";

  static String m1(carrier, tel) =>
      "您的 SIM 卡个人资料存在问题。如需解决此问题，请拨打 ${tel} 与${carrier}联系。";

  static String m2(carrier) => "您的 SIM 卡个人资料存在问题。如需解决此问题，请与${carrier}联系。";

  static String m3(carrier, tel) =>
      "请确保所选 SIM 卡个人资料尚未下载到此设备或其他设备上。\n\n如需更多帮助，请拨打 ${tel} 与${carrier}联系";

  static String m4(carrier) =>
      "请确保所选 SIM 卡个人资料尚未下载到此设备或其他设备上。\n\n如需更多帮助，请与${carrier}联系";

  static String m5(carrier) => "卡名称：${carrier}";

  static String m6(carrier) => "${carrier}已激活";

  static String m7(mode) => "连接方式：${mode}";

  static String m8(content) => "${content} 已复制";

  static String m9(carrier, tel) => "请拨打 ${tel} 与${carrier}联系，确定设备能否解锁。";

  static String m10(carrier) => "请与${carrier}联系，确定设备能否解锁。";

  static String m11(eid) => "您可能需要此设备的 ${eid}。";

  static String m12(operateCode, euiccResult) =>
      "您可以向运营商提供以下信息：\n${operateCode}\n${euiccResult}";

  static String m13(time) => "下载时间：${time}";

  static String m14(iccid) => "卡序列号：${iccid}";

  static String m15(content) => "请输入${content}";

  static String m16(carrier) => "正在激活${carrier}…";

  static String m17(carrier) =>
      "有 1 个${carrier}号码可供此设备使用。启用服务后，${carrier}可能会开始收取相关费用。";

  static String m18(carrier) => "要使用“${carrier}”吗？";

  static String m19(carrier) => "无法启用${carrier}";

  static String m20(version) => "版本：${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about_us": MessageLookupByLibrary.simpleMessage("关于我们"),
    "activate": MessageLookupByLibrary.simpleMessage("激活"),
    "activate_failed": MessageLookupByLibrary.simpleMessage(
      "激活失败，请再次尝试或联系卡片供应商",
    ),
    "activate_mode": MessageLookupByLibrary.simpleMessage(
      "当前设备未下载任何套餐，请通过以下方式下载激活",
    ),
    "activation_code": MessageLookupByLibrary.simpleMessage("激活码"),
    "add_by_wifi": MessageLookupByLibrary.simpleMessage("删除后请重新添加"),
    "add_device": MessageLookupByLibrary.simpleMessage("添加设备"),
    "alias": MessageLookupByLibrary.simpleMessage("设置别名"),
    "apn": MessageLookupByLibrary.simpleMessage("APN"),
    "apn_name": MessageLookupByLibrary.simpleMessage("用户名"),
    "apn_password": MessageLookupByLibrary.simpleMessage("密码"),
    "apn_setting": MessageLookupByLibrary.simpleMessage("APN设置"),
    "app_name": MessageLookupByLibrary.simpleMessage("eSIM管家"),
    "available": MessageLookupByLibrary.simpleMessage("可用"),
    "ble_data_len_size_set": MessageLookupByLibrary.simpleMessage("蓝牙数据长度大小设置"),
    "ble_size_set_remind": MessageLookupByLibrary.simpleMessage(
      "执行该操作后，需要重启蓝牙设备。如果配置错误，会导致连接设备失败，请谨慎操作!",
    ),
    "bluetooth": MessageLookupByLibrary.simpleMessage("蓝牙"),
    "body_check_qr_code_or_go_back": MessageLookupByLibrary.simpleMessage(
      "请确保您扫描的二维码正确无误。如需尝试重新扫描，请返回上一个屏幕。",
    ),
    "body_device_is_locked": m0,
    "body_device_is_locked_no_name": MessageLookupByLibrary.simpleMessage(
      "您的设备已锁定。",
    ),
    "body_issue_with_sim_profile": m1,
    "body_issue_with_sim_profile_no_name": MessageLookupByLibrary.simpleMessage(
      "您的 SIM 卡个人资料存在问题。如需解决此问题，请与运营商联系。",
    ),
    "body_issue_with_sim_profile_no_tel": m2,
    "body_make_sure_not_already_downloaded": m3,
    "body_make_sure_not_already_downloaded_no_name":
        MessageLookupByLibrary.simpleMessage(
          "请确保所选 SIM 卡个人资料尚未下载到此设备或其他设备上。\n\n如需更多帮助，请与运营商联系。",
        ),
    "body_make_sure_not_already_downloaded_no_tel": m4,
    "body_need_wifi_connection": MessageLookupByLibrary.simpleMessage(
      "您需要连接到 WLAN 网络，才能下载 SIM 卡个人资料。",
    ),
    "body_need_wifi_or_mobile_connection": MessageLookupByLibrary.simpleMessage(
      "您需要连接到 WLAN 网络或移动网络，才能下载 SIM 卡个人资料。",
    ),
    "body_not_enough_space_to_download": MessageLookupByLibrary.simpleMessage(
      "空间不足，无法下载此 SIM 卡个人资料。",
    ),
    "body_something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "尝试激活您的号码时出了点问题。",
    ),
    "bootstrap_available": MessageLookupByLibrary.simpleMessage("默认网络已启用"),
    "bootstrap_enabled": MessageLookupByLibrary.simpleMessage(
      "默认网络已启用，请等待设备入网",
    ),
    "btn_add_device": MessageLookupByLibrary.simpleMessage("添加设备"),
    "btn_cancel": MessageLookupByLibrary.simpleMessage("取消"),
    "btn_connect_ble": MessageLookupByLibrary.simpleMessage("蓝牙连接"),
    "btn_connect_device": MessageLookupByLibrary.simpleMessage("连接设备"),
    "btn_connect_wifi": MessageLookupByLibrary.simpleMessage("Wi-Fi连接"),
    "btn_goto_set": MessageLookupByLibrary.simpleMessage("前往设置>>"),
    "btn_next_step": MessageLookupByLibrary.simpleMessage("下一步"),
    "btn_ok": MessageLookupByLibrary.simpleMessage("好的"),
    "btn_previous_step": MessageLookupByLibrary.simpleMessage("上一步"),
    "btn_set": MessageLookupByLibrary.simpleMessage("设置"),
    "btn_skip": MessageLookupByLibrary.simpleMessage("跳过"),
    "btn_start_add_device": MessageLookupByLibrary.simpleMessage("开始添加设备"),
    "btn_wifi_next": MessageLookupByLibrary.simpleMessage("已连接设备，下一步"),
    "btn_wifi_set": MessageLookupByLibrary.simpleMessage("未连接设备，前往设置"),
    "card_name": m5,
    "checkWifiInfo": MessageLookupByLibrary.simpleMessage("前往设置，查看Wi-Fi信息"),
    "choose": MessageLookupByLibrary.simpleMessage("选择"),
    "choose_done": MessageLookupByLibrary.simpleMessage("完成"),
    "config_device_network": MessageLookupByLibrary.simpleMessage("配备设备网络"),
    "confirm": MessageLookupByLibrary.simpleMessage("确认"),
    "confirm_acti_success_sub_title_no_phone":
        MessageLookupByLibrary.simpleMessage("您的号码现可使用"),
    "confirm_acti_success_title": m6,
    "confirmation_code_text": MessageLookupByLibrary.simpleMessage(
      "请输入运营商提供给您的确认码。这是您的运营商要求的步骤。",
    ),
    "confirmation_code_title": MessageLookupByLibrary.simpleMessage("确认码"),
    "connect_failed": MessageLookupByLibrary.simpleMessage("连接失败，请检查重新连接或重启设备"),
    "connect_mode": m7,
    "connect_type": MessageLookupByLibrary.simpleMessage(
      "请选择连接方式，目前可用的连接方式：Wi-Fi、蓝牙",
    ),
    "connect_wifi_failed": MessageLookupByLibrary.simpleMessage("连接失败"),
    "connected": MessageLookupByLibrary.simpleMessage("已连接"),
    "connecting": MessageLookupByLibrary.simpleMessage("正在连接"),
    "content_is_copied": m8,
    "copyright": MessageLookupByLibrary.simpleMessage(
      "COPYRIGHT 2024 LINKS FIELD NETWORKS. ALL RIGHTS RESERVED.",
    ),
    "copyright_content": MessageLookupByLibrary.simpleMessage(
      "This application is a part of the Linksfield eSIM solution. It can facilitate the user to manage the eSIM equipment without operationinterface and support the Wi-Fi、Bluetooth and other equipment connection modes. It enables the device to activate the eSIM card and download the number,and can delete the number and other operations.",
    ),
    "corporation_name": MessageLookupByLibrary.simpleMessage("深圳市领科物联网科技有限公司"),
    "data": MessageLookupByLibrary.simpleMessage("数据"),
    "delete": MessageLookupByLibrary.simpleMessage("删除"),
    "delete_device": MessageLookupByLibrary.simpleMessage("删除设备"),
    "delete_esim": MessageLookupByLibrary.simpleMessage("删除SIM卡"),
    "delete_tip": MessageLookupByLibrary.simpleMessage("删除后将无法恢复，请谨慎操作"),
    "detail_contact_carrier_for_more_help":
        MessageLookupByLibrary.simpleMessage("如需更多帮助，请与运营商联系。"),
    "detail_contact_carrier_to_unlock": m9,
    "detail_contact_carrier_to_unlock_no_name":
        MessageLookupByLibrary.simpleMessage("请与运营商联系，确定设备能否解锁。"),
    "detail_contact_carrier_to_unlock_no_tel": m10,
    "detail_delete_a_profile_before_retrying":
        MessageLookupByLibrary.simpleMessage("请在“设置”中删除个人资料，然后重试。"),
    "detail_may_need_eid_number": m11,
    "detail_provide_info_to_carrier": m12,
    "detail_provide_info_to_carrier1": MessageLookupByLibrary.simpleMessage(
      "您可以向运营商提供以下信息：",
    ),
    "detail_try_adding_again": MessageLookupByLibrary.simpleMessage(
      "连接到网络后，请尝试重新添加移动网络。",
    ),
    "device_company": MessageLookupByLibrary.simpleMessage("设备厂商"),
    "device_connect_timeout": MessageLookupByLibrary.simpleMessage(
      "连接超时，请注意设置中的蓝牙数据长度大小设置是否正确",
    ),
    "device_detail": MessageLookupByLibrary.simpleMessage("设备详情"),
    "device_disconnected": MessageLookupByLibrary.simpleMessage(
      "设备连接已断开，请重新连接",
    ),
    "device_name": MessageLookupByLibrary.simpleMessage("设备名称"),
    "device_network_error": MessageLookupByLibrary.simpleMessage("当前设备无网络连接"),
    "device_type": MessageLookupByLibrary.simpleMessage("设备类别"),
    "device_unavailable": MessageLookupByLibrary.simpleMessage("请检查您的设备连接状态"),
    "disable": MessageLookupByLibrary.simpleMessage("停用"),
    "disable_esim": MessageLookupByLibrary.simpleMessage("停用sim卡"),
    "disable_tip": MessageLookupByLibrary.simpleMessage("停用SIM卡将关闭当前启用的服务"),
    "disabled": MessageLookupByLibrary.simpleMessage("未启用"),
    "disconnect_content": MessageLookupByLibrary.simpleMessage(
      "系统检测到您的手机未开启移动网络，请前往系统设置开启",
    ),
    "disconnect_net": MessageLookupByLibrary.simpleMessage("未开启网络"),
    "disconnected": MessageLookupByLibrary.simpleMessage("未连接"),
    "download_time": m13,
    "downloadable_qr": MessageLookupByLibrary.simpleMessage("待激活码号"),
    "downloadable_tips": MessageLookupByLibrary.simpleMessage(
      "此列表展示您待激活号码，点击进行下载。",
    ),
    "downloaded_sim": MessageLookupByLibrary.simpleMessage("下载的 SIM卡"),
    "downloading": MessageLookupByLibrary.simpleMessage("验证中，请耐心等待"),
    "empty_device": MessageLookupByLibrary.simpleMessage("当前没有连接过任何设备"),
    "empty_list": MessageLookupByLibrary.simpleMessage("列表为空"),
    "enable": MessageLookupByLibrary.simpleMessage("启用"),
    "enable_esim": MessageLookupByLibrary.simpleMessage("启用SIM卡"),
    "enable_tip": MessageLookupByLibrary.simpleMessage("启用后请耐心等待套餐服务的开通"),
    "enabled": MessageLookupByLibrary.simpleMessage("已启用"),
    "error_code_text": MessageLookupByLibrary.simpleMessage("错误代码"),
    "error_title": MessageLookupByLibrary.simpleMessage("扫描失败"),
    "external_portal": MessageLookupByLibrary.simpleMessage("外部portal"),
    "gallery": MessageLookupByLibrary.simpleMessage("从相册选择"),
    "get_default_sub_title": MessageLookupByLibrary.simpleMessage("正在检查网络信息…"),
    "goto_mall": MessageLookupByLibrary.simpleMessage("如需购买套餐可前往"),
    "help": MessageLookupByLibrary.simpleMessage("帮助"),
    "iccid": m14,
    "input_alias": MessageLookupByLibrary.simpleMessage("请输入设备别名"),
    "input_alias_tips": MessageLookupByLibrary.simpleMessage("请填写设备别名"),
    "input_esim_name": MessageLookupByLibrary.simpleMessage("请输入卡片名称"),
    "input_name": MessageLookupByLibrary.simpleMessage("请填写卡片名称"),
    "input_s": m15,
    "ip_address": MessageLookupByLibrary.simpleMessage("设备IP地址"),
    "network_error": MessageLookupByLibrary.simpleMessage(
      "当您的设备或手机无法使用网络进行操作时",
    ),
    "network_tips": MessageLookupByLibrary.simpleMessage(
      "###### 解决方案\n1. 若您在使用设备的移动网络时出现问题，可以尝试重启设备或重新连接设备\n2. 若您在管理设备QRcode时\n   + 若手机弹出选项：“继续使用无线网络”、 “使用手机网络但保持无线网络连接”，可点击使用手机网络但保持无线网络连接”继续完成操作；\n   + 若您在系统提示时选择了“继续使用无线网络“”或没有弹出系统提示，可以尝试重新连接设备无线网络，再 次触发系统提示；\n   + 若您尝试重新连接设备后仍无法使用网络，可检查设备是否支持蓝牙功能，使用蓝牙连接方式将设备接入App，最后完成设备QRcode的管理操作；\n   + 若您尝试了上述所有方案均无法完成对QRcode的管理操作，请按照以下步骤操作：\n\n      ① 进入手机WLAN网络连接的详情页面;\n\n      ② 记录当前WLAN网络连接的IP配置;\n\n      ③ 将设备WLAN网络IP配置设置为“手动”;\n\n      ④ 在IP配置填写步骤②记录的IP配置;\n\n      ⑤ 回到App完成QRcode操作;\n\n      ⑥ 确认设备QRcode已“激活”后，将设备WLAN网络连接IP配置改回 “自动”。",
    ),
    "network_unavailable": MessageLookupByLibrary.simpleMessage("请检查手机本地网络配置"),
    "not_downloaded": MessageLookupByLibrary.simpleMessage("未下载SIM"),
    "open": MessageLookupByLibrary.simpleMessage("去开启"),
    "operate_failed": MessageLookupByLibrary.simpleMessage("操作失败"),
    "operate_tips": MessageLookupByLibrary.simpleMessage(
      "温馨提示：操作前请保证当前网络可用，若无法成功请点击",
    ),
    "operation_code_text": MessageLookupByLibrary.simpleMessage("操作代码"),
    "package_mall": MessageLookupByLibrary.simpleMessage("套餐商城"),
    "password": MessageLookupByLibrary.simpleMessage("密码"),
    "permission_denied": MessageLookupByLibrary.simpleMessage("权限被禁止"),
    "please_input": MessageLookupByLibrary.simpleMessage("请输入"),
    "please_input_activation_code": MessageLookupByLibrary.simpleMessage(
      "请填写激活码",
    ),
    "policy_rule_text": MessageLookupByLibrary.simpleMessage(
      "需要您的同意才能允许配置文件策略规则。这是您的运营商要求的步骤。",
    ),
    "port": MessageLookupByLibrary.simpleMessage("端口"),
    "profile_active": MessageLookupByLibrary.simpleMessage("已激活"),
    "profile_detail": MessageLookupByLibrary.simpleMessage("Profile 详情"),
    "profile_iccid": MessageLookupByLibrary.simpleMessage("ICCID"),
    "profile_inactive": MessageLookupByLibrary.simpleMessage("未激活"),
    "profile_list": MessageLookupByLibrary.simpleMessage("Profile 列表"),
    "profile_name": MessageLookupByLibrary.simpleMessage("卡名称"),
    "profile_type": MessageLookupByLibrary.simpleMessage("配置文件类型"),
    "q_download_sub_text": MessageLookupByLibrary.simpleMessage("这可能需要几分钟的时间"),
    "q_download_sub_title": m16,
    "q_result_download_metadata_text": m17,
    "qr_confirm": MessageLookupByLibrary.simpleMessage("信息确认"),
    "qr_null": MessageLookupByLibrary.simpleMessage("未发现可用二维码"),
    "qr_unavailable": MessageLookupByLibrary.simpleMessage("二维码不可用请再次尝试"),
    "reason_code_text": MessageLookupByLibrary.simpleMessage("原因代码"),
    "rename_illegal": MessageLookupByLibrary.simpleMessage("名称不可用"),
    "reset": MessageLookupByLibrary.simpleMessage("重置"),
    "reset_confirm": MessageLookupByLibrary.simpleMessage(
      "您即将对当前设备执行重置操作：\n\n1. 重置设备不会影响当前已下载的eSIM\n\n2. 重置后需要等待默认网络入网再进行操作\n\n3. 请在设备信号灯展示“可用”后再进行操作",
    ),
    "reset_device": MessageLookupByLibrary.simpleMessage("重置设备"),
    "reset_notice": MessageLookupByLibrary.simpleMessage(
      "检测到您当前的网络不可用，建议重置设备后使用默认网络完成操作\n\n温馨提示：\n\n1. 重置设备不会影响当前已下载的eSIM\n\n2. 重置后需要等待默认网络入网再进行操作\n\n3. 请在设备信号灯展示“可用”后再进行操作",
    ),
    "resetting": MessageLookupByLibrary.simpleMessage("正在重置，请耐心等待"),
    "result_download_title": m18,
    "roaming": MessageLookupByLibrary.simpleMessage("漫游"),
    "save": MessageLookupByLibrary.simpleMessage("保存"),
    "save_failed": MessageLookupByLibrary.simpleMessage("保存失败"),
    "scan": MessageLookupByLibrary.simpleMessage("扫一扫"),
    "scan_qr": MessageLookupByLibrary.simpleMessage("请将扫描框对准商城发送的二维码"),
    "scan_success": MessageLookupByLibrary.simpleMessage("扫描成功"),
    "search": MessageLookupByLibrary.simpleMessage("搜索"),
    "search_nothing": MessageLookupByLibrary.simpleMessage("未搜索到设备，请确认设备是否开启"),
    "service_provider_name": MessageLookupByLibrary.simpleMessage("服务提供商"),
    "sim_card": MessageLookupByLibrary.simpleMessage("SIM卡"),
    "sim_insert_content": MessageLookupByLibrary.simpleMessage("已检测到SIM卡插入手机"),
    "sim_tips": MessageLookupByLibrary.simpleMessage("提示"),
    "sim_unplugged": MessageLookupByLibrary.simpleMessage("sim卡被拔出！"),
    "subject_code_text": MessageLookupByLibrary.simpleMessage("主题代码"),
    "tap_download": MessageLookupByLibrary.simpleMessage("点击激活按钮开始下载号码"),
    "text_begin_connect": MessageLookupByLibrary.simpleMessage("点击开始连接第一个设备"),
    "text_ble_not_open": MessageLookupByLibrary.simpleMessage(
      "系统识别到您未开启手机蓝牙功能",
    ),
    "text_connect_support": MessageLookupByLibrary.simpleMessage(
      "目前支持的两种连接方式：蓝牙、Wi-Fi",
    ),
    "text_connect_support_bluetooth": MessageLookupByLibrary.simpleMessage(
      "目前支持的连接方式：蓝牙",
    ),
    "text_connect_support_none": MessageLookupByLibrary.simpleMessage(
      "目前没有支持的连接方式",
    ),
    "text_connect_support_wifi": MessageLookupByLibrary.simpleMessage(
      "目前支持的连接方式：Wi-Fi",
    ),
    "text_device_use_explain": MessageLookupByLibrary.simpleMessage("设备使用说明"),
    "text_divider": MessageLookupByLibrary.simpleMessage(
      "----------  或  ----------",
    ),
    "text_not_find_device": MessageLookupByLibrary.simpleMessage("没有搜索到可用的设备"),
    "text_search": MessageLookupByLibrary.simpleMessage("搜索"),
    "text_select_connect": MessageLookupByLibrary.simpleMessage("选择连接方式"),
    "text_select_device": MessageLookupByLibrary.simpleMessage("选择设备"),
    "text_select_device_type": MessageLookupByLibrary.simpleMessage("请选择设备型号"),
    "text_upgrade_content": MessageLookupByLibrary.simpleMessage(
      "应用有新版本，现在去升级",
    ),
    "text_upgrade_title": MessageLookupByLibrary.simpleMessage("升级"),
    "text_welcome": MessageLookupByLibrary.simpleMessage("欢迎使用eSIM管家！"),
    "text_wifi_not_open": MessageLookupByLibrary.simpleMessage(
      "系统识别到您未开启手机WLAN功能",
    ),
    "text_wifi_set": MessageLookupByLibrary.simpleMessage("请点击连接设备按钮，进入系统设置"),
    "text_wifi_use_wifi": MessageLookupByLibrary.simpleMessage("使用WI-FI连接设备"),
    "text_wifi_use_wlan": MessageLookupByLibrary.simpleMessage("通过WLAN功能连接设备"),
    "tip_reboot": MessageLookupByLibrary.simpleMessage("操作成功，请重启设备"),
    "tips_1": MessageLookupByLibrary.simpleMessage("1.操作前请保证当前网络可用"),
    "tips_2": MessageLookupByLibrary.simpleMessage("2.若操作无法成功请点击"),
    "tips_title": MessageLookupByLibrary.simpleMessage("温馨提示："),
    "title_connect_to_wifi": MessageLookupByLibrary.simpleMessage("连接到 WLAN"),
    "title_couldnt_activate_carrier": m19,
    "title_couldnt_activate_carrier_no_name":
        MessageLookupByLibrary.simpleMessage("无法启用服务"),
    "title_incorrect_qr_code": MessageLookupByLibrary.simpleMessage("二维码不正确"),
    "title_network_not_activated": MessageLookupByLibrary.simpleMessage(
      "尚未启用网络",
    ),
    "title_no_connection": MessageLookupByLibrary.simpleMessage("无网络连接"),
    "title_profile_already_downloaded": MessageLookupByLibrary.simpleMessage(
      "已下载过个人资料",
    ),
    "unavailable": MessageLookupByLibrary.simpleMessage("不可用"),
    "universal": MessageLookupByLibrary.simpleMessage("通用设备"),
    "user_consent_switch_no_name_title": MessageLookupByLibrary.simpleMessage(
      "要使用新 SIM 卡吗？",
    ),
    "version": m20,
    "warning_ble_not_open_content": MessageLookupByLibrary.simpleMessage(
      "请前往系统设置开启蓝牙功能",
    ),
    "warning_ble_not_open_title": MessageLookupByLibrary.simpleMessage("蓝牙未开启"),
    "warning_location_not_open_content": MessageLookupByLibrary.simpleMessage(
      "请前往系统设置开启定位功能",
    ),
    "warning_location_not_open_title": MessageLookupByLibrary.simpleMessage(
      "定位未开启",
    ),
    "warning_skip_content": MessageLookupByLibrary.simpleMessage(
      "您在添加设备前无法正常使用设备",
    ),
    "warning_skip_title": MessageLookupByLibrary.simpleMessage("稍后添加设备？"),
    "wifi": MessageLookupByLibrary.simpleMessage("Wi-Fi"),
    "wifiName": MessageLookupByLibrary.simpleMessage("Wi-Fi名称"),
    "wifi_list_title": MessageLookupByLibrary.simpleMessage("当前数据连接不可用"),
  };
}
