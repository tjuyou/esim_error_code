// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(carrier) => "Your device is locked by ${carrier}.";

  static String m1(carrier, tel) =>
      "There’s an issue with your SIM profile. To fix the issue, contact ${carrier} at ${tel}.";

  static String m2(carrier) =>
      "There\'s an issue with your SIM profile. To fix the issue, contact ${carrier}.";

  static String m3(carrier, tel) =>
      "Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact ${carrier} at ${tel}";

  static String m4(carrier) =>
      "Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact ${carrier}";

  static String m5(carrier) => "Card name：${carrier}";

  static String m6(carrier) => "${carrier} is active";

  static String m7(mode) => "Connection mode:${mode}";

  static String m8(content) => "${content} is copied!";

  static String m9(carrier, tel) =>
      "Contact ${carrier} at ${tel} to see if the device can be unlocked.";

  static String m10(carrier) =>
      "Contact ${carrier} to see if the device can be unlocked.";

  static String m11(eid) => "You may need the ${eid} for this device.";

  static String m12(operateCode, euiccResult) =>
      "You can provide the following information to your operator:\n${operateCode}\n${euiccResult}";

  static String m13(time) => "Download time:${time}";

  static String m14(iccid) => "ICCID:${iccid}";

  static String m15(content) => "Please input ${content}";

  static String m16(carrier) => "Activating ${carrier}…";

  static String m17(carrier) =>
      "1 ${carrier} number is available for this device. ${carrier} may begin charging for the service once you have activated it.";

  static String m18(carrier) => "Use ${carrier}?";

  static String m19(carrier) => "Couldn\'t activate ${carrier}";

  static String m20(version) => "Version:${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about_us": MessageLookupByLibrary.simpleMessage("About"),
    "activate": MessageLookupByLibrary.simpleMessage("Activate"),
    "activate_failed": MessageLookupByLibrary.simpleMessage(
      "Activation failed. Please try again or contact the card supplier",
    ),
    "activate_mode": MessageLookupByLibrary.simpleMessage(
      "No packages found,please select as followed:",
    ),
    "activation_code": MessageLookupByLibrary.simpleMessage("Activation code"),
    "add_by_wifi": MessageLookupByLibrary.simpleMessage(
      "After deletion, please add again",
    ),
    "add_device": MessageLookupByLibrary.simpleMessage("Add device"),
    "alias": MessageLookupByLibrary.simpleMessage("Set device ID"),
    "apn": MessageLookupByLibrary.simpleMessage("APN"),
    "apn_name": MessageLookupByLibrary.simpleMessage("APN name"),
    "apn_password": MessageLookupByLibrary.simpleMessage("Password"),
    "apn_setting": MessageLookupByLibrary.simpleMessage("APN Setting"),
    "app_name": MessageLookupByLibrary.simpleMessage("eSIM Manager"),
    "available": MessageLookupByLibrary.simpleMessage("Available"),
    "ble_data_len_size_set": MessageLookupByLibrary.simpleMessage(
      "Bluetooth data length size setting",
    ),
    "ble_size_set_remind": MessageLookupByLibrary.simpleMessage(
      "Once you do that, you need to restart your Bluetooth device. If the configuration is incorrect, it will cause the device to fail to connect, so use caution!",
    ),
    "bluetooth": MessageLookupByLibrary.simpleMessage("Bluetooth"),
    "body_check_qr_code_or_go_back": MessageLookupByLibrary.simpleMessage(
      "Check that you are scanning the correct QR code. To try scanning again, go back to the previous screen.",
    ),
    "body_device_is_locked": m0,
    "body_device_is_locked_no_name": MessageLookupByLibrary.simpleMessage(
      "Your device is locked.",
    ),
    "body_issue_with_sim_profile": m1,
    "body_issue_with_sim_profile_no_name": MessageLookupByLibrary.simpleMessage(
      "There\'s an issue with your SIM profile. To fix the issue, contact your operator.",
    ),
    "body_issue_with_sim_profile_no_tel": m2,
    "body_make_sure_not_already_downloaded": m3,
    "body_make_sure_not_already_downloaded_no_name":
        MessageLookupByLibrary.simpleMessage(
          "Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact your operator.",
        ),
    "body_make_sure_not_already_downloaded_no_tel": m4,
    "body_need_wifi_connection": MessageLookupByLibrary.simpleMessage(
      "You will need a Wi-Fi connection to download a SIM profile.",
    ),
    "body_need_wifi_or_mobile_connection": MessageLookupByLibrary.simpleMessage(
      "You will need a Wi-Fi or mobile connection to download a SIM profile.",
    ),
    "body_not_enough_space_to_download": MessageLookupByLibrary.simpleMessage(
      "There isn\'t enough space to download this SIM profile.",
    ),
    "body_something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong while trying to activate your number.",
    ),
    "bootstrap_available": MessageLookupByLibrary.simpleMessage(
      "The default network is enabled",
    ),
    "bootstrap_enabled": MessageLookupByLibrary.simpleMessage(
      "The default network is enabled,please wait for the network access",
    ),
    "btn_add_device": MessageLookupByLibrary.simpleMessage("Add device"),
    "btn_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
    "btn_connect_ble": MessageLookupByLibrary.simpleMessage(
      "Bluetooth connectivity",
    ),
    "btn_connect_device": MessageLookupByLibrary.simpleMessage(
      "Connect Device",
    ),
    "btn_connect_wifi": MessageLookupByLibrary.simpleMessage("WLAN connection"),
    "btn_goto_set": MessageLookupByLibrary.simpleMessage("Go to Settings >>"),
    "btn_next_step": MessageLookupByLibrary.simpleMessage("Next step"),
    "btn_ok": MessageLookupByLibrary.simpleMessage("OK"),
    "btn_previous_step": MessageLookupByLibrary.simpleMessage("Previous step"),
    "btn_set": MessageLookupByLibrary.simpleMessage("Settings"),
    "btn_skip": MessageLookupByLibrary.simpleMessage(" Skip"),
    "btn_start_add_device": MessageLookupByLibrary.simpleMessage(
      "Start adding device",
    ),
    "btn_wifi_next": MessageLookupByLibrary.simpleMessage(
      "Device connected,next",
    ),
    "btn_wifi_set": MessageLookupByLibrary.simpleMessage(
      "No device connected, go to settings",
    ),
    "card_name": m5,
    "checkWifiInfo": MessageLookupByLibrary.simpleMessage(
      "Go to Settings to view your Wi-Fi information",
    ),
    "choose": MessageLookupByLibrary.simpleMessage("Option"),
    "choose_done": MessageLookupByLibrary.simpleMessage("Done"),
    "config_device_network": MessageLookupByLibrary.simpleMessage(
      "Set up device network",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "confirm_acti_success_sub_title_no_phone":
        MessageLookupByLibrary.simpleMessage(
          "Your number should be ready to use",
        ),
    "confirm_acti_success_title": m6,
    "confirmation_code_text": MessageLookupByLibrary.simpleMessage(
      "Enter the confirmation code that your carrier gave you. This step is required by your carrier.",
    ),
    "confirmation_code_title": MessageLookupByLibrary.simpleMessage(
      "confirmation code",
    ),
    "connect_failed": MessageLookupByLibrary.simpleMessage(
      "Connection failure. Please check and reconnect or restart the device.",
    ),
    "connect_mode": m7,
    "connect_type": MessageLookupByLibrary.simpleMessage(
      "Please select supported connection type:WLAN,Bluetooth",
    ),
    "connect_wifi_failed": MessageLookupByLibrary.simpleMessage(
      "Connection failure.",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Connected"),
    "connecting": MessageLookupByLibrary.simpleMessage("Connecting"),
    "content_is_copied": m8,
    "copyright": MessageLookupByLibrary.simpleMessage(
      " COPYRIGHT 2024 LINKS FIELD NETWORKS. ALL RIGHTS RESERVED.",
    ),
    "copyright_content": MessageLookupByLibrary.simpleMessage(
      " This application is a part of the Linksfield eSIM solution. It can facilitate the user to manage the eSIM equipment without operationinterface and support the WLAN、Bluetooth and other equipment connection modes. It enables the device to activate the eSIM card and download the number, and can delete the number and other operations.",
    ),
    "corporation_name": MessageLookupByLibrary.simpleMessage(
      "Shenzhen Links Field Internet of things Technology Co., Ltd",
    ),
    "data": MessageLookupByLibrary.simpleMessage("data"),
    "delete": MessageLookupByLibrary.simpleMessage("Delete"),
    "delete_device": MessageLookupByLibrary.simpleMessage("Delete"),
    "delete_esim": MessageLookupByLibrary.simpleMessage("Delete SIM card"),
    "delete_tip": MessageLookupByLibrary.simpleMessage(
      "Warning:It cannot be regained after deletion.",
    ),
    "detail_contact_carrier_for_more_help":
        MessageLookupByLibrary.simpleMessage(
          "For more help, contact your operator.",
        ),
    "detail_contact_carrier_to_unlock": m9,
    "detail_contact_carrier_to_unlock_no_name":
        MessageLookupByLibrary.simpleMessage(
          "Contact your operator to see if the device can be unlocked.",
        ),
    "detail_contact_carrier_to_unlock_no_tel": m10,
    "detail_delete_a_profile_before_retrying":
        MessageLookupByLibrary.simpleMessage(
          "Delete a profile in Settings, then try again.",
        ),
    "detail_may_need_eid_number": m11,
    "detail_provide_info_to_carrier": m12,
    "detail_provide_info_to_carrier1": MessageLookupByLibrary.simpleMessage(
      "You can provide the following information to your operator:",
    ),
    "detail_try_adding_again": MessageLookupByLibrary.simpleMessage(
      "Once you connect, try adding a mobile network again.",
    ),
    "device_company": MessageLookupByLibrary.simpleMessage("Device Vendor"),
    "device_connect_timeout": MessageLookupByLibrary.simpleMessage(
      "Connection timeout, please note that the bluetooth data length is set correctly in the Settings.",
    ),
    "device_detail": MessageLookupByLibrary.simpleMessage("Device Info."),
    "device_disconnected": MessageLookupByLibrary.simpleMessage(
      "Device has been disconnected,please reconnect",
    ),
    "device_name": MessageLookupByLibrary.simpleMessage("Device Name"),
    "device_network_error": MessageLookupByLibrary.simpleMessage(
      "The current device is not connected to the network.",
    ),
    "device_type": MessageLookupByLibrary.simpleMessage("Device Model"),
    "device_unavailable": MessageLookupByLibrary.simpleMessage(
      "Device is unavailable,please check",
    ),
    "disable": MessageLookupByLibrary.simpleMessage("Disable"),
    "disable_esim": MessageLookupByLibrary.simpleMessage("Disable SIM card"),
    "disable_tip": MessageLookupByLibrary.simpleMessage(
      "It\'s will out of service when this SIM disabled.",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Not enabled"),
    "disconnect_content": MessageLookupByLibrary.simpleMessage(
      "Please turn on the mobile network in system settings.",
    ),
    "disconnect_net": MessageLookupByLibrary.simpleMessage(
      "The network is not turned on",
    ),
    "disconnected": MessageLookupByLibrary.simpleMessage("Disconnected"),
    "download_time": m13,
    "downloadable_qr": MessageLookupByLibrary.simpleMessage(
      "Code to be activated",
    ),
    "downloadable_tips": MessageLookupByLibrary.simpleMessage(
      "This list shows you want to activate the number, click to download.",
    ),
    "downloaded_sim": MessageLookupByLibrary.simpleMessage("Downloaded SIM"),
    "downloading": MessageLookupByLibrary.simpleMessage(
      "Please wait patiently during verification",
    ),
    "empty_device": MessageLookupByLibrary.simpleMessage(
      "No devices connected yet.",
    ),
    "empty_list": MessageLookupByLibrary.simpleMessage("The list is blank."),
    "enable": MessageLookupByLibrary.simpleMessage("Enable"),
    "enable_esim": MessageLookupByLibrary.simpleMessage("Enable SIM card"),
    "enable_tip": MessageLookupByLibrary.simpleMessage(
      "Please wait for the activation of the package service.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Enabled"),
    "error_code_text": MessageLookupByLibrary.simpleMessage("Error code"),
    "error_title": MessageLookupByLibrary.simpleMessage("Scan failure"),
    "external_portal": MessageLookupByLibrary.simpleMessage("External portal"),
    "gallery": MessageLookupByLibrary.simpleMessage("Choose from Album"),
    "get_default_sub_title": MessageLookupByLibrary.simpleMessage(
      "Checking network info…",
    ),
    "goto_mall": MessageLookupByLibrary.simpleMessage(
      "Please make a purchase in ",
    ),
    "help": MessageLookupByLibrary.simpleMessage("Help"),
    "iccid": m14,
    "input_alias": MessageLookupByLibrary.simpleMessage(
      "Please name the device",
    ),
    "input_alias_tips": MessageLookupByLibrary.simpleMessage(
      "Please name the device",
    ),
    "input_esim_name": MessageLookupByLibrary.simpleMessage(
      "Please name the SIM",
    ),
    "input_name": MessageLookupByLibrary.simpleMessage("Please name the SIM"),
    "input_s": m15,
    "ip_address": MessageLookupByLibrary.simpleMessage("Device IP Address"),
    "network_error": MessageLookupByLibrary.simpleMessage(
      "When your device or mobile phone cannot operate with the network",
    ),
    "network_tips": MessageLookupByLibrary.simpleMessage(
      "###### Solution \n1. If you have problems using the device\'s mobile network, you can try restarting the device or reconnecting the device \n2. If you are managing the device QRcode \n   + If the phone pops up options: \"continue to use the wireless network\", \"use the mobile network but keep the wireless network connected\" Click \"use mobile network but keep wireless network connection\" to continue to complete the operation\n   + If you select \"continue to use wireless network\" when prompted Or if the system prompt does not pop up, you can try to reconnect the device to the wireless network and trigger the system prompt again; \n   + If you still can\'t use the network after trying to reconnect the device, you can check whether the device supports the Bluetooth function, connect the device to the app using the Bluetooth connection method, and finally complete the management of the device QRcode; \n   + If you try all the above schemes, you can\'t complete the QRcode management Please follow the following steps for the management of the device: \n\n      ① enter the details page of mobile phone WLAN network connection; \n\n       ② record the IP configuration of the current WLAN network connection; \n\n       ③ set the device WLAN network IP configuration to \"manual\" ; \n\n       ④ fill in the IP configuration recorded in step ② in the IP configuration; \n\n       ⑤ return to the app to complete the QRcode operation; \n\n       ⑥ after confirming that the device QRcode has been \"activated\", change the device WLAN network connection IP configuration back to \"automatic\".",
    ),
    "network_unavailable": MessageLookupByLibrary.simpleMessage(
      "Network is unavailable，please check",
    ),
    "not_downloaded": MessageLookupByLibrary.simpleMessage(
      "Not downloaded SIM",
    ),
    "open": MessageLookupByLibrary.simpleMessage("Open"),
    "operate_failed": MessageLookupByLibrary.simpleMessage("Operation failed"),
    "operate_tips": MessageLookupByLibrary.simpleMessage(
      "Notice: Please ensure the network is available. If failure, please click here ",
    ),
    "operation_code_text": MessageLookupByLibrary.simpleMessage(
      "Operation code",
    ),
    "package_mall": MessageLookupByLibrary.simpleMessage("Package Mall"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "permission_denied": MessageLookupByLibrary.simpleMessage(
      "Permission is prohibited",
    ),
    "please_input": MessageLookupByLibrary.simpleMessage("Please enter"),
    "please_input_activation_code": MessageLookupByLibrary.simpleMessage(
      "Please fill in the activation code",
    ),
    "policy_rule_text": MessageLookupByLibrary.simpleMessage(
      "Needs your consent to allow profile policy rules. This step is required by your carrier.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Port"),
    "profile_active": MessageLookupByLibrary.simpleMessage("Active"),
    "profile_detail": MessageLookupByLibrary.simpleMessage("Profile Detail"),
    "profile_iccid": MessageLookupByLibrary.simpleMessage("ICCID"),
    "profile_inactive": MessageLookupByLibrary.simpleMessage("Inactive"),
    "profile_list": MessageLookupByLibrary.simpleMessage("Profile List"),
    "profile_name": MessageLookupByLibrary.simpleMessage("Profile Name"),
    "profile_type": MessageLookupByLibrary.simpleMessage("Profile Type"),
    "q_download_sub_text": MessageLookupByLibrary.simpleMessage(
      "This may take a few minutes",
    ),
    "q_download_sub_title": m16,
    "q_result_download_metadata_text": m17,
    "qr_confirm": MessageLookupByLibrary.simpleMessage("SIM Info Confirm"),
    "qr_null": MessageLookupByLibrary.simpleMessage(
      "No available QR codes found",
    ),
    "qr_unavailable": MessageLookupByLibrary.simpleMessage(
      "QR code is not available. Please try again",
    ),
    "reason_code_text": MessageLookupByLibrary.simpleMessage("Reason code"),
    "rename_illegal": MessageLookupByLibrary.simpleMessage(
      "The name cannot be used",
    ),
    "reset": MessageLookupByLibrary.simpleMessage("Reset"),
    "reset_confirm": MessageLookupByLibrary.simpleMessage(
      "You are about to reset the current device:\n\n1. Resetting the device will not affect the currently downloaded eSIM\n\n2. After reset, you need to wait for the default network access before operation\n\n3. Please operate after the device signal light shows \"available\"",
    ),
    "reset_device": MessageLookupByLibrary.simpleMessage("Reset device"),
    "reset_notice": MessageLookupByLibrary.simpleMessage(
      "Network is unavailable，please reset the device and use the default network before operation\n\nNotice:\n\n1. Resetting the device will not affect the currently downloaded eSIM\n\n2. After reset, you need to wait for the default network access before operation\n\n3. Please operate after the device signal light shows \"available\"",
    ),
    "resetting": MessageLookupByLibrary.simpleMessage(
      "Resetting, please wait patiently",
    ),
    "result_download_title": m18,
    "roaming": MessageLookupByLibrary.simpleMessage("roaming"),
    "save": MessageLookupByLibrary.simpleMessage("Save"),
    "save_failed": MessageLookupByLibrary.simpleMessage("Save failed"),
    "scan": MessageLookupByLibrary.simpleMessage("Scan"),
    "scan_qr": MessageLookupByLibrary.simpleMessage(
      "Please aim the scan box at the QR code sent by the mall",
    ),
    "scan_success": MessageLookupByLibrary.simpleMessage("Scan succeeded"),
    "search": MessageLookupByLibrary.simpleMessage("Search"),
    "search_nothing": MessageLookupByLibrary.simpleMessage(
      "Device unfound,please check the device and try again.",
    ),
    "service_provider_name": MessageLookupByLibrary.simpleMessage("Provider"),
    "sim_card": MessageLookupByLibrary.simpleMessage("SIM card"),
    "sim_insert_content": MessageLookupByLibrary.simpleMessage(
      "SIM card detected inserted into phone",
    ),
    "sim_tips": MessageLookupByLibrary.simpleMessage("Prompt"),
    "sim_unplugged": MessageLookupByLibrary.simpleMessage("SIM card removed!"),
    "subject_code_text": MessageLookupByLibrary.simpleMessage("Subject code"),
    "tap_download": MessageLookupByLibrary.simpleMessage(
      "Click the Activate button to start Profile downloading.",
    ),
    "text_begin_connect": MessageLookupByLibrary.simpleMessage(
      "Click to start connecting the first device",
    ),
    "text_ble_not_open": MessageLookupByLibrary.simpleMessage(
      "The system recognizes that you have not turned on the Bluetooth function of your mobile phone",
    ),
    "text_connect_support": MessageLookupByLibrary.simpleMessage(
      "Supported connection type:WLAN,Bluetooth",
    ),
    "text_connect_support_bluetooth": MessageLookupByLibrary.simpleMessage(
      "Supported connection type:Bluetooth",
    ),
    "text_connect_support_none": MessageLookupByLibrary.simpleMessage(
      "No supported connection type",
    ),
    "text_connect_support_wifi": MessageLookupByLibrary.simpleMessage(
      "Supported connection type:WLAN",
    ),
    "text_device_use_explain": MessageLookupByLibrary.simpleMessage(
      "Device instructions",
    ),
    "text_divider": MessageLookupByLibrary.simpleMessage(
      "----------  or  ----------",
    ),
    "text_not_find_device": MessageLookupByLibrary.simpleMessage(
      "No available devices were found",
    ),
    "text_search": MessageLookupByLibrary.simpleMessage(" Search"),
    "text_select_connect": MessageLookupByLibrary.simpleMessage(
      "Select connection type",
    ),
    "text_select_device": MessageLookupByLibrary.simpleMessage("Select device"),
    "text_select_device_type": MessageLookupByLibrary.simpleMessage(
      "Please select the device model",
    ),
    "text_upgrade_content": MessageLookupByLibrary.simpleMessage(
      "The app has a new version, now go upgrade",
    ),
    "text_upgrade_title": MessageLookupByLibrary.simpleMessage("Upgrade"),
    "text_welcome": MessageLookupByLibrary.simpleMessage(
      " Welcome to eSIM Manager!",
    ),
    "text_wifi_not_open": MessageLookupByLibrary.simpleMessage(
      "The system recognizes that you have not enabled the WLAN function of your mobile phone",
    ),
    "text_wifi_set": MessageLookupByLibrary.simpleMessage(
      "Please click the connect device button to enter the system settings",
    ),
    "text_wifi_use_wifi": MessageLookupByLibrary.simpleMessage(
      "Connect devices with WLAN",
    ),
    "text_wifi_use_wlan": MessageLookupByLibrary.simpleMessage(
      "Connect devices via WLAN",
    ),
    "tip_reboot": MessageLookupByLibrary.simpleMessage(
      "Successful, please restart the device",
    ),
    "tips_1": MessageLookupByLibrary.simpleMessage(
      "1. Please ensure the network is available.",
    ),
    "tips_2": MessageLookupByLibrary.simpleMessage(
      "2. If failure, please click here",
    ),
    "tips_title": MessageLookupByLibrary.simpleMessage("Notice:"),
    "title_connect_to_wifi": MessageLookupByLibrary.simpleMessage(
      "Connect to wifi",
    ),
    "title_couldnt_activate_carrier": m19,
    "title_couldnt_activate_carrier_no_name":
        MessageLookupByLibrary.simpleMessage("Couldn\'t activate service"),
    "title_incorrect_qr_code": MessageLookupByLibrary.simpleMessage(
      "Incorrect QR code",
    ),
    "title_network_not_activated": MessageLookupByLibrary.simpleMessage(
      "Network not activated",
    ),
    "title_no_connection": MessageLookupByLibrary.simpleMessage(
      "No connection",
    ),
    "title_profile_already_downloaded": MessageLookupByLibrary.simpleMessage(
      "Profile already downloaded",
    ),
    "unavailable": MessageLookupByLibrary.simpleMessage("Not available"),
    "universal": MessageLookupByLibrary.simpleMessage("General Device"),
    "user_consent_switch_no_name_title": MessageLookupByLibrary.simpleMessage(
      "Use new SIM?",
    ),
    "version": m20,
    "warning_ble_not_open_content": MessageLookupByLibrary.simpleMessage(
      "Please go to system settings to enable Bluetooth",
    ),
    "warning_ble_not_open_title": MessageLookupByLibrary.simpleMessage(
      "Bluetooth off",
    ),
    "warning_location_not_open_content": MessageLookupByLibrary.simpleMessage(
      "Please go to the system settings to enable the positioning function",
    ),
    "warning_location_not_open_title": MessageLookupByLibrary.simpleMessage(
      "Positioning off",
    ),
    "warning_skip_content": MessageLookupByLibrary.simpleMessage(
      "You cannot use the device properly until you add it",
    ),
    "warning_skip_title": MessageLookupByLibrary.simpleMessage("Add later?"),
    "wifi": MessageLookupByLibrary.simpleMessage("WLAN"),
    "wifiName": MessageLookupByLibrary.simpleMessage("Wi-Fi name"),
    "wifi_list_title": MessageLookupByLibrary.simpleMessage(
      "The current data connection is not available",
    ),
  };
}
