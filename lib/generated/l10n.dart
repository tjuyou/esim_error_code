// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `eSIM Manager`
  String get app_name {
    return Intl.message('eSIM Manager', name: 'app_name', desc: '', args: []);
  }

  /// `Please name the device`
  String get input_alias {
    return Intl.message(
      'Please name the device',
      name: 'input_alias',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Please name the device`
  String get input_alias_tips {
    return Intl.message(
      'Please name the device',
      name: 'input_alias_tips',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete_device {
    return Intl.message('Delete', name: 'delete_device', desc: '', args: []);
  }

  /// `After deletion, please add again`
  String get add_by_wifi {
    return Intl.message(
      'After deletion, please add again',
      name: 'add_by_wifi',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Set device ID`
  String get alias {
    return Intl.message('Set device ID', name: 'alias', desc: '', args: []);
  }

  /// `Connection mode:{mode}`
  String connect_mode(Object mode) {
    return Intl.message(
      'Connection mode:$mode',
      name: 'connect_mode',
      desc: '',
      args: [mode],
    );
  }

  /// `Bluetooth`
  String get bluetooth {
    return Intl.message('Bluetooth', name: 'bluetooth', desc: '', args: []);
  }

  /// `WLAN`
  String get wifi {
    return Intl.message('WLAN', name: 'wifi', desc: '', args: []);
  }

  /// `Connected`
  String get connected {
    return Intl.message('Connected', name: 'connected', desc: '', args: []);
  }

  /// `Disconnected`
  String get disconnected {
    return Intl.message(
      'Disconnected',
      name: 'disconnected',
      desc: '',
      args: [],
    );
  }

  /// `Not available`
  String get unavailable {
    return Intl.message(
      'Not available',
      name: 'unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message('Available', name: 'available', desc: '', args: []);
  }

  /// `Connecting`
  String get connecting {
    return Intl.message('Connecting', name: 'connecting', desc: '', args: []);
  }

  /// `The network is not turned on`
  String get disconnect_net {
    return Intl.message(
      'The network is not turned on',
      name: 'disconnect_net',
      desc: '',
      args: [],
    );
  }

  /// `Please turn on the mobile network in system settings.`
  String get disconnect_content {
    return Intl.message(
      'Please turn on the mobile network in system settings.',
      name: 'disconnect_content',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message('Open', name: 'open', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Add device`
  String get add_device {
    return Intl.message('Add device', name: 'add_device', desc: '', args: []);
  }

  /// `Package Mall`
  String get package_mall {
    return Intl.message(
      'Package Mall',
      name: 'package_mall',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about_us {
    return Intl.message('About', name: 'about_us', desc: '', args: []);
  }

  /// `No packages found,please select as followed:`
  String get activate_mode {
    return Intl.message(
      'No packages found,please select as followed:',
      name: 'activate_mode',
      desc: '',
      args: [],
    );
  }

  /// `Scan`
  String get scan {
    return Intl.message('Scan', name: 'scan', desc: '', args: []);
  }

  /// `Choose from Album`
  String get gallery {
    return Intl.message(
      'Choose from Album',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Activation code`
  String get activation_code {
    return Intl.message(
      'Activation code',
      name: 'activation_code',
      desc: '',
      args: [],
    );
  }

  /// `Please make a purchase in `
  String get goto_mall {
    return Intl.message(
      'Please make a purchase in ',
      name: 'goto_mall',
      desc: '',
      args: [],
    );
  }

  /// `Please enter`
  String get please_input {
    return Intl.message(
      'Please enter',
      name: 'please_input',
      desc: '',
      args: [],
    );
  }

  /// `Device unfound,please check the device and try again.`
  String get search_nothing {
    return Intl.message(
      'Device unfound,please check the device and try again.',
      name: 'search_nothing',
      desc: '',
      args: [],
    );
  }

  /// `Not enabled`
  String get disabled {
    return Intl.message('Not enabled', name: 'disabled', desc: '', args: []);
  }

  /// `Enabled`
  String get enabled {
    return Intl.message('Enabled', name: 'enabled', desc: '', args: []);
  }

  /// `Disable`
  String get disable {
    return Intl.message('Disable', name: 'disable', desc: '', args: []);
  }

  /// `Enable`
  String get enable {
    return Intl.message('Enable', name: 'enable', desc: '', args: []);
  }

  /// `ICCID:{iccid}`
  String iccid(Object iccid) {
    return Intl.message('ICCID:$iccid', name: 'iccid', desc: '', args: [iccid]);
  }

  /// `Download time:{time}`
  String download_time(Object time) {
    return Intl.message(
      'Download time:$time',
      name: 'download_time',
      desc: '',
      args: [time],
    );
  }

  /// `SIM Info Confirm`
  String get qr_confirm {
    return Intl.message(
      'SIM Info Confirm',
      name: 'qr_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Scan succeeded`
  String get scan_success {
    return Intl.message(
      'Scan succeeded',
      name: 'scan_success',
      desc: '',
      args: [],
    );
  }

  /// `Click the Activate button to start Profile downloading.`
  String get tap_download {
    return Intl.message(
      'Click the Activate button to start Profile downloading.',
      name: 'tap_download',
      desc: '',
      args: [],
    );
  }

  /// `Activate`
  String get activate {
    return Intl.message('Activate', name: 'activate', desc: '', args: []);
  }

  /// `Connection failure. Please check and reconnect or restart the device.`
  String get connect_failed {
    return Intl.message(
      'Connection failure. Please check and reconnect or restart the device.',
      name: 'connect_failed',
      desc: '',
      args: [],
    );
  }

  /// `Enable SIM card`
  String get enable_esim {
    return Intl.message(
      'Enable SIM card',
      name: 'enable_esim',
      desc: '',
      args: [],
    );
  }

  /// `Please wait for the activation of the package service.`
  String get enable_tip {
    return Intl.message(
      'Please wait for the activation of the package service.',
      name: 'enable_tip',
      desc: '',
      args: [],
    );
  }

  /// `Disable SIM card`
  String get disable_esim {
    return Intl.message(
      'Disable SIM card',
      name: 'disable_esim',
      desc: '',
      args: [],
    );
  }

  /// `It's will out of service when this SIM disabled.`
  String get disable_tip {
    return Intl.message(
      'It\'s will out of service when this SIM disabled.',
      name: 'disable_tip',
      desc: '',
      args: [],
    );
  }

  /// `Delete SIM card`
  String get delete_esim {
    return Intl.message(
      'Delete SIM card',
      name: 'delete_esim',
      desc: '',
      args: [],
    );
  }

  /// `Warning:It cannot be regained after deletion.`
  String get delete_tip {
    return Intl.message(
      'Warning:It cannot be regained after deletion.',
      name: 'delete_tip',
      desc: '',
      args: [],
    );
  }

  /// `Please name the SIM`
  String get input_esim_name {
    return Intl.message(
      'Please name the SIM',
      name: 'input_esim_name',
      desc: '',
      args: [],
    );
  }

  /// `No devices connected yet.`
  String get empty_device {
    return Intl.message(
      'No devices connected yet.',
      name: 'empty_device',
      desc: '',
      args: [],
    );
  }

  /// `Please select supported connection type:WLAN,Bluetooth`
  String get connect_type {
    return Intl.message(
      'Please select supported connection type:WLAN,Bluetooth',
      name: 'connect_type',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get choose_done {
    return Intl.message('Done', name: 'choose_done', desc: '', args: []);
  }

  /// `The list is blank.`
  String get empty_list {
    return Intl.message(
      'The list is blank.',
      name: 'empty_list',
      desc: '',
      args: [],
    );
  }

  /// `No available QR codes found`
  String get qr_null {
    return Intl.message(
      'No available QR codes found',
      name: 'qr_null',
      desc: '',
      args: [],
    );
  }

  /// `QR code is not available. Please try again`
  String get qr_unavailable {
    return Intl.message(
      'QR code is not available. Please try again',
      name: 'qr_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the activation code`
  String get please_input_activation_code {
    return Intl.message(
      'Please fill in the activation code',
      name: 'please_input_activation_code',
      desc: '',
      args: [],
    );
  }

  /// `Permission is prohibited`
  String get permission_denied {
    return Intl.message(
      'Permission is prohibited',
      name: 'permission_denied',
      desc: '',
      args: [],
    );
  }

  /// `Please aim the scan box at the QR code sent by the mall`
  String get scan_qr {
    return Intl.message(
      'Please aim the scan box at the QR code sent by the mall',
      name: 'scan_qr',
      desc: '',
      args: [],
    );
  }

  /// `Option`
  String get choose {
    return Intl.message('Option', name: 'choose', desc: '', args: []);
  }

  /// `Operation failed`
  String get operate_failed {
    return Intl.message(
      'Operation failed',
      name: 'operate_failed',
      desc: '',
      args: [],
    );
  }

  /// `Activation failed. Please try again or contact the card supplier`
  String get activate_failed {
    return Intl.message(
      'Activation failed. Please try again or contact the card supplier',
      name: 'activate_failed',
      desc: '',
      args: [],
    );
  }

  /// `Please wait patiently during verification`
  String get downloading {
    return Intl.message(
      'Please wait patiently during verification',
      name: 'downloading',
      desc: '',
      args: [],
    );
  }

  /// `Version:{version}`
  String version(Object version) {
    return Intl.message(
      'Version:$version',
      name: 'version',
      desc: '',
      args: [version],
    );
  }

  /// `Shenzhen Links Field Internet of things Technology Co., Ltd`
  String get corporation_name {
    return Intl.message(
      'Shenzhen Links Field Internet of things Technology Co., Ltd',
      name: 'corporation_name',
      desc: '',
      args: [],
    );
  }

  /// ` COPYRIGHT 2024 LINKS FIELD NETWORKS. ALL RIGHTS RESERVED.`
  String get copyright {
    return Intl.message(
      ' COPYRIGHT 2024 LINKS FIELD NETWORKS. ALL RIGHTS RESERVED.',
      name: 'copyright',
      desc: '',
      args: [],
    );
  }

  /// ` This application is a part of the Linksfield eSIM solution. It can facilitate the user to manage the eSIM equipment without operationinterface and support the WLAN、Bluetooth and other equipment connection modes. It enables the device to activate the eSIM card and download the number, and can delete the number and other operations.`
  String get copyright_content {
    return Intl.message(
      ' This application is a part of the Linksfield eSIM solution. It can facilitate the user to manage the eSIM equipment without operationinterface and support the WLAN、Bluetooth and other equipment connection modes. It enables the device to activate the eSIM card and download the number, and can delete the number and other operations.',
      name: 'copyright_content',
      desc: '',
      args: [],
    );
  }

  /// `Device Info.`
  String get device_detail {
    return Intl.message(
      'Device Info.',
      name: 'device_detail',
      desc: '',
      args: [],
    );
  }

  /// `When your device or mobile phone cannot operate with the network`
  String get network_error {
    return Intl.message(
      'When your device or mobile phone cannot operate with the network',
      name: 'network_error',
      desc: '',
      args: [],
    );
  }

  /// `###### Solution \n1. If you have problems using the device's mobile network, you can try restarting the device or reconnecting the device \n2. If you are managing the device QRcode \n   + If the phone pops up options: "continue to use the wireless network", "use the mobile network but keep the wireless network connected" Click "use mobile network but keep wireless network connection" to continue to complete the operation\n   + If you select "continue to use wireless network" when prompted Or if the system prompt does not pop up, you can try to reconnect the device to the wireless network and trigger the system prompt again; \n   + If you still can't use the network after trying to reconnect the device, you can check whether the device supports the Bluetooth function, connect the device to the app using the Bluetooth connection method, and finally complete the management of the device QRcode; \n   + If you try all the above schemes, you can't complete the QRcode management Please follow the following steps for the management of the device: \n\n      ① enter the details page of mobile phone WLAN network connection; \n\n       ② record the IP configuration of the current WLAN network connection; \n\n       ③ set the device WLAN network IP configuration to "manual" ; \n\n       ④ fill in the IP configuration recorded in step ② in the IP configuration; \n\n       ⑤ return to the app to complete the QRcode operation; \n\n       ⑥ after confirming that the device QRcode has been "activated", change the device WLAN network connection IP configuration back to "automatic".`
  String get network_tips {
    return Intl.message(
      '###### Solution \n1. If you have problems using the device\'s mobile network, you can try restarting the device or reconnecting the device \n2. If you are managing the device QRcode \n   + If the phone pops up options: "continue to use the wireless network", "use the mobile network but keep the wireless network connected" Click "use mobile network but keep wireless network connection" to continue to complete the operation\n   + If you select "continue to use wireless network" when prompted Or if the system prompt does not pop up, you can try to reconnect the device to the wireless network and trigger the system prompt again; \n   + If you still can\'t use the network after trying to reconnect the device, you can check whether the device supports the Bluetooth function, connect the device to the app using the Bluetooth connection method, and finally complete the management of the device QRcode; \n   + If you try all the above schemes, you can\'t complete the QRcode management Please follow the following steps for the management of the device: \n\n      ① enter the details page of mobile phone WLAN network connection; \n\n       ② record the IP configuration of the current WLAN network connection; \n\n       ③ set the device WLAN network IP configuration to "manual" ; \n\n       ④ fill in the IP configuration recorded in step ② in the IP configuration; \n\n       ⑤ return to the app to complete the QRcode operation; \n\n       ⑥ after confirming that the device QRcode has been "activated", change the device WLAN network connection IP configuration back to "automatic".',
      name: 'network_tips',
      desc: '',
      args: [],
    );
  }

  /// ` Skip`
  String get btn_skip {
    return Intl.message(' Skip', name: 'btn_skip', desc: '', args: []);
  }

  /// ` Welcome to eSIM Manager!`
  String get text_welcome {
    return Intl.message(
      ' Welcome to eSIM Manager!',
      name: 'text_welcome',
      desc: '',
      args: [],
    );
  }

  /// `Click to start connecting the first device`
  String get text_begin_connect {
    return Intl.message(
      'Click to start connecting the first device',
      name: 'text_begin_connect',
      desc: '',
      args: [],
    );
  }

  /// `Add later?`
  String get warning_skip_title {
    return Intl.message(
      'Add later?',
      name: 'warning_skip_title',
      desc: '',
      args: [],
    );
  }

  /// `You cannot use the device properly until you add it`
  String get warning_skip_content {
    return Intl.message(
      'You cannot use the device properly until you add it',
      name: 'warning_skip_content',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get btn_cancel {
    return Intl.message('Cancel', name: 'btn_cancel', desc: '', args: []);
  }

  /// `Connect Device`
  String get btn_connect_device {
    return Intl.message(
      'Connect Device',
      name: 'btn_connect_device',
      desc: '',
      args: [],
    );
  }

  /// `Please select the device model`
  String get text_select_device_type {
    return Intl.message(
      'Please select the device model',
      name: 'text_select_device_type',
      desc: '',
      args: [],
    );
  }

  /// `Select connection type`
  String get text_select_connect {
    return Intl.message(
      'Select connection type',
      name: 'text_select_connect',
      desc: '',
      args: [],
    );
  }

  /// `Supported connection type:WLAN,Bluetooth`
  String get text_connect_support {
    return Intl.message(
      'Supported connection type:WLAN,Bluetooth',
      name: 'text_connect_support',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth connectivity`
  String get btn_connect_ble {
    return Intl.message(
      'Bluetooth connectivity',
      name: 'btn_connect_ble',
      desc: '',
      args: [],
    );
  }

  /// `WLAN connection`
  String get btn_connect_wifi {
    return Intl.message(
      'WLAN connection',
      name: 'btn_connect_wifi',
      desc: '',
      args: [],
    );
  }

  /// `----------  or  ----------`
  String get text_divider {
    return Intl.message(
      '----------  or  ----------',
      name: 'text_divider',
      desc: '',
      args: [],
    );
  }

  /// ` Search`
  String get text_search {
    return Intl.message(' Search', name: 'text_search', desc: '', args: []);
  }

  /// `Bluetooth off`
  String get warning_ble_not_open_title {
    return Intl.message(
      'Bluetooth off',
      name: 'warning_ble_not_open_title',
      desc: '',
      args: [],
    );
  }

  /// `Please go to system settings to enable Bluetooth`
  String get warning_ble_not_open_content {
    return Intl.message(
      'Please go to system settings to enable Bluetooth',
      name: 'warning_ble_not_open_content',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get btn_set {
    return Intl.message('Settings', name: 'btn_set', desc: '', args: []);
  }

  /// `Select device`
  String get text_select_device {
    return Intl.message(
      'Select device',
      name: 'text_select_device',
      desc: '',
      args: [],
    );
  }

  /// `Add device`
  String get btn_add_device {
    return Intl.message(
      'Add device',
      name: 'btn_add_device',
      desc: '',
      args: [],
    );
  }

  /// `Go to Settings >>`
  String get btn_goto_set {
    return Intl.message(
      'Go to Settings >>',
      name: 'btn_goto_set',
      desc: '',
      args: [],
    );
  }

  /// `The system recognizes that you have not turned on the Bluetooth function of your mobile phone`
  String get text_ble_not_open {
    return Intl.message(
      'The system recognizes that you have not turned on the Bluetooth function of your mobile phone',
      name: 'text_ble_not_open',
      desc: '',
      args: [],
    );
  }

  /// `The system recognizes that you have not enabled the WLAN function of your mobile phone`
  String get text_wifi_not_open {
    return Intl.message(
      'The system recognizes that you have not enabled the WLAN function of your mobile phone',
      name: 'text_wifi_not_open',
      desc: '',
      args: [],
    );
  }

  /// `No available devices were found`
  String get text_not_find_device {
    return Intl.message(
      'No available devices were found',
      name: 'text_not_find_device',
      desc: '',
      args: [],
    );
  }

  /// `Connect devices with WLAN`
  String get text_wifi_use_wifi {
    return Intl.message(
      'Connect devices with WLAN',
      name: 'text_wifi_use_wifi',
      desc: '',
      args: [],
    );
  }

  /// `Please click the connect device button to enter the system settings`
  String get text_wifi_set {
    return Intl.message(
      'Please click the connect device button to enter the system settings',
      name: 'text_wifi_set',
      desc: '',
      args: [],
    );
  }

  /// `Connect devices via WLAN`
  String get text_wifi_use_wlan {
    return Intl.message(
      'Connect devices via WLAN',
      name: 'text_wifi_use_wlan',
      desc: '',
      args: [],
    );
  }

  /// `No device connected, go to settings`
  String get btn_wifi_set {
    return Intl.message(
      'No device connected, go to settings',
      name: 'btn_wifi_set',
      desc: '',
      args: [],
    );
  }

  /// `Device connected,next`
  String get btn_wifi_next {
    return Intl.message(
      'Device connected,next',
      name: 'btn_wifi_next',
      desc: '',
      args: [],
    );
  }

  /// `Positioning off`
  String get warning_location_not_open_title {
    return Intl.message(
      'Positioning off',
      name: 'warning_location_not_open_title',
      desc: '',
      args: [],
    );
  }

  /// `Please go to the system settings to enable the positioning function`
  String get warning_location_not_open_content {
    return Intl.message(
      'Please go to the system settings to enable the positioning function',
      name: 'warning_location_not_open_content',
      desc: '',
      args: [],
    );
  }

  /// `Device instructions`
  String get text_device_use_explain {
    return Intl.message(
      'Device instructions',
      name: 'text_device_use_explain',
      desc: '',
      args: [],
    );
  }

  /// `Previous step`
  String get btn_previous_step {
    return Intl.message(
      'Previous step',
      name: 'btn_previous_step',
      desc: '',
      args: [],
    );
  }

  /// `Next step`
  String get btn_next_step {
    return Intl.message('Next step', name: 'btn_next_step', desc: '', args: []);
  }

  /// `Start adding device`
  String get btn_start_add_device {
    return Intl.message(
      'Start adding device',
      name: 'btn_start_add_device',
      desc: '',
      args: [],
    );
  }

  /// `Notice:`
  String get tips_title {
    return Intl.message('Notice:', name: 'tips_title', desc: '', args: []);
  }

  /// `1. Please ensure the network is available.`
  String get tips_1 {
    return Intl.message(
      '1. Please ensure the network is available.',
      name: 'tips_1',
      desc: '',
      args: [],
    );
  }

  /// `2. If failure, please click here`
  String get tips_2 {
    return Intl.message(
      '2. If failure, please click here',
      name: 'tips_2',
      desc: '',
      args: [],
    );
  }

  /// `Notice: Please ensure the network is available. If failure, please click here `
  String get operate_tips {
    return Intl.message(
      'Notice: Please ensure the network is available. If failure, please click here ',
      name: 'operate_tips',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message('Help', name: 'help', desc: '', args: []);
  }

  /// `Please name the SIM`
  String get input_name {
    return Intl.message(
      'Please name the SIM',
      name: 'input_name',
      desc: '',
      args: [],
    );
  }

  /// `Supported connection type:Bluetooth`
  String get text_connect_support_bluetooth {
    return Intl.message(
      'Supported connection type:Bluetooth',
      name: 'text_connect_support_bluetooth',
      desc: '',
      args: [],
    );
  }

  /// `Supported connection type:WLAN`
  String get text_connect_support_wifi {
    return Intl.message(
      'Supported connection type:WLAN',
      name: 'text_connect_support_wifi',
      desc: '',
      args: [],
    );
  }

  /// `No supported connection type`
  String get text_connect_support_none {
    return Intl.message(
      'No supported connection type',
      name: 'text_connect_support_none',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade`
  String get text_upgrade_title {
    return Intl.message(
      'Upgrade',
      name: 'text_upgrade_title',
      desc: '',
      args: [],
    );
  }

  /// `The app has a new version, now go upgrade`
  String get text_upgrade_content {
    return Intl.message(
      'The app has a new version, now go upgrade',
      name: 'text_upgrade_content',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get btn_ok {
    return Intl.message('OK', name: 'btn_ok', desc: '', args: []);
  }

  /// `Successful, please restart the device`
  String get tip_reboot {
    return Intl.message(
      'Successful, please restart the device',
      name: 'tip_reboot',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `Reset device`
  String get reset_device {
    return Intl.message(
      'Reset device',
      name: 'reset_device',
      desc: '',
      args: [],
    );
  }

  /// `Network is unavailable，please reset the device and use the default network before operation\n\nNotice:\n\n1. Resetting the device will not affect the currently downloaded eSIM\n\n2. After reset, you need to wait for the default network access before operation\n\n3. Please operate after the device signal light shows "available"`
  String get reset_notice {
    return Intl.message(
      'Network is unavailable，please reset the device and use the default network before operation\n\nNotice:\n\n1. Resetting the device will not affect the currently downloaded eSIM\n\n2. After reset, you need to wait for the default network access before operation\n\n3. Please operate after the device signal light shows "available"',
      name: 'reset_notice',
      desc: '',
      args: [],
    );
  }

  /// `You are about to reset the current device:\n\n1. Resetting the device will not affect the currently downloaded eSIM\n\n2. After reset, you need to wait for the default network access before operation\n\n3. Please operate after the device signal light shows "available"`
  String get reset_confirm {
    return Intl.message(
      'You are about to reset the current device:\n\n1. Resetting the device will not affect the currently downloaded eSIM\n\n2. After reset, you need to wait for the default network access before operation\n\n3. Please operate after the device signal light shows "available"',
      name: 'reset_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Resetting, please wait patiently`
  String get resetting {
    return Intl.message(
      'Resetting, please wait patiently',
      name: 'resetting',
      desc: '',
      args: [],
    );
  }

  /// `Network is unavailable，please check`
  String get network_unavailable {
    return Intl.message(
      'Network is unavailable，please check',
      name: 'network_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `Device is unavailable,please check`
  String get device_unavailable {
    return Intl.message(
      'Device is unavailable,please check',
      name: 'device_unavailable',
      desc: '',
      args: [],
    );
  }

  /// `The default network is enabled,please wait for the network access`
  String get bootstrap_enabled {
    return Intl.message(
      'The default network is enabled,please wait for the network access',
      name: 'bootstrap_enabled',
      desc: '',
      args: [],
    );
  }

  /// `The default network is enabled`
  String get bootstrap_available {
    return Intl.message(
      'The default network is enabled',
      name: 'bootstrap_available',
      desc: '',
      args: [],
    );
  }

  /// `The name cannot be used`
  String get rename_illegal {
    return Intl.message(
      'The name cannot be used',
      name: 'rename_illegal',
      desc: '',
      args: [],
    );
  }

  /// `Device has been disconnected,please reconnect`
  String get device_disconnected {
    return Intl.message(
      'Device has been disconnected,please reconnect',
      name: 'device_disconnected',
      desc: '',
      args: [],
    );
  }

  /// `General Device`
  String get universal {
    return Intl.message(
      'General Device',
      name: 'universal',
      desc: '',
      args: [],
    );
  }

  /// `Scan failure`
  String get error_title {
    return Intl.message(
      'Scan failure',
      name: 'error_title',
      desc: '',
      args: [],
    );
  }

  /// `Code to be activated`
  String get downloadable_qr {
    return Intl.message(
      'Code to be activated',
      name: 'downloadable_qr',
      desc: '',
      args: [],
    );
  }

  /// `This list shows you want to activate the number, click to download.`
  String get downloadable_tips {
    return Intl.message(
      'This list shows you want to activate the number, click to download.',
      name: 'downloadable_tips',
      desc: '',
      args: [],
    );
  }

  /// `Card name：{carrier}`
  String card_name(Object carrier) {
    return Intl.message(
      'Card name：$carrier',
      name: 'card_name',
      desc: '',
      args: [carrier],
    );
  }

  /// `Not downloaded SIM`
  String get not_downloaded {
    return Intl.message(
      'Not downloaded SIM',
      name: 'not_downloaded',
      desc: '',
      args: [],
    );
  }

  /// `{carrier} is active`
  String confirm_acti_success_title(Object carrier) {
    return Intl.message(
      '$carrier is active',
      name: 'confirm_acti_success_title',
      desc: '',
      args: [carrier],
    );
  }

  /// `Your number should be ready to use`
  String get confirm_acti_success_sub_title_no_phone {
    return Intl.message(
      'Your number should be ready to use',
      name: 'confirm_acti_success_sub_title_no_phone',
      desc: '',
      args: [],
    );
  }

  /// `Use {carrier}?`
  String result_download_title(Object carrier) {
    return Intl.message(
      'Use $carrier?',
      name: 'result_download_title',
      desc: '',
      args: [carrier],
    );
  }

  /// `Use new SIM?`
  String get user_consent_switch_no_name_title {
    return Intl.message(
      'Use new SIM?',
      name: 'user_consent_switch_no_name_title',
      desc: '',
      args: [],
    );
  }

  /// `1 {carrier} number is available for this device. {carrier} may begin charging for the service once you have activated it.`
  String q_result_download_metadata_text(Object carrier) {
    return Intl.message(
      '1 $carrier number is available for this device. $carrier may begin charging for the service once you have activated it.',
      name: 'q_result_download_metadata_text',
      desc: '',
      args: [carrier],
    );
  }

  /// `There's an issue with your SIM profile. To fix the issue, contact your operator.`
  String get body_issue_with_sim_profile_no_name {
    return Intl.message(
      'There\'s an issue with your SIM profile. To fix the issue, contact your operator.',
      name: 'body_issue_with_sim_profile_no_name',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect QR code`
  String get title_incorrect_qr_code {
    return Intl.message(
      'Incorrect QR code',
      name: 'title_incorrect_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `Check that you are scanning the correct QR code. To try scanning again, go back to the previous screen.`
  String get body_check_qr_code_or_go_back {
    return Intl.message(
      'Check that you are scanning the correct QR code. To try scanning again, go back to the previous screen.',
      name: 'body_check_qr_code_or_go_back',
      desc: '',
      args: [],
    );
  }

  /// `For more help, contact your operator.`
  String get detail_contact_carrier_for_more_help {
    return Intl.message(
      'For more help, contact your operator.',
      name: 'detail_contact_carrier_for_more_help',
      desc: '',
      args: [],
    );
  }

  /// `Connect to wifi`
  String get title_connect_to_wifi {
    return Intl.message(
      'Connect to wifi',
      name: 'title_connect_to_wifi',
      desc: '',
      args: [],
    );
  }

  /// `You will need a Wi-Fi connection to download a SIM profile.`
  String get body_need_wifi_connection {
    return Intl.message(
      'You will need a Wi-Fi connection to download a SIM profile.',
      name: 'body_need_wifi_connection',
      desc: '',
      args: [],
    );
  }

  /// `Once you connect, try adding a mobile network again.`
  String get detail_try_adding_again {
    return Intl.message(
      'Once you connect, try adding a mobile network again.',
      name: 'detail_try_adding_again',
      desc: '',
      args: [],
    );
  }

  /// `There isn't enough space to download this SIM profile.`
  String get body_not_enough_space_to_download {
    return Intl.message(
      'There isn\'t enough space to download this SIM profile.',
      name: 'body_not_enough_space_to_download',
      desc: '',
      args: [],
    );
  }

  /// `Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact {carrier} at {tel}`
  String body_make_sure_not_already_downloaded(Object carrier, Object tel) {
    return Intl.message(
      'Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact $carrier at $tel',
      name: 'body_make_sure_not_already_downloaded',
      desc: '',
      args: [carrier, tel],
    );
  }

  /// `Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact {carrier}`
  String body_make_sure_not_already_downloaded_no_tel(Object carrier) {
    return Intl.message(
      'Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact $carrier',
      name: 'body_make_sure_not_already_downloaded_no_tel',
      desc: '',
      args: [carrier],
    );
  }

  /// `Your device is locked by {carrier}.`
  String body_device_is_locked(Object carrier) {
    return Intl.message(
      'Your device is locked by $carrier.',
      name: 'body_device_is_locked',
      desc: '',
      args: [carrier],
    );
  }

  /// `Your device is locked.`
  String get body_device_is_locked_no_name {
    return Intl.message(
      'Your device is locked.',
      name: 'body_device_is_locked_no_name',
      desc: '',
      args: [],
    );
  }

  /// `Contact {carrier} at {tel} to see if the device can be unlocked.`
  String detail_contact_carrier_to_unlock(Object carrier, Object tel) {
    return Intl.message(
      'Contact $carrier at $tel to see if the device can be unlocked.',
      name: 'detail_contact_carrier_to_unlock',
      desc: '',
      args: [carrier, tel],
    );
  }

  /// `Contact your operator to see if the device can be unlocked.`
  String get detail_contact_carrier_to_unlock_no_name {
    return Intl.message(
      'Contact your operator to see if the device can be unlocked.',
      name: 'detail_contact_carrier_to_unlock_no_name',
      desc: '',
      args: [],
    );
  }

  /// `Contact {carrier} to see if the device can be unlocked.`
  String detail_contact_carrier_to_unlock_no_tel(Object carrier) {
    return Intl.message(
      'Contact $carrier to see if the device can be unlocked.',
      name: 'detail_contact_carrier_to_unlock_no_tel',
      desc: '',
      args: [carrier],
    );
  }

  /// `Delete a profile in Settings, then try again.`
  String get detail_delete_a_profile_before_retrying {
    return Intl.message(
      'Delete a profile in Settings, then try again.',
      name: 'detail_delete_a_profile_before_retrying',
      desc: '',
      args: [],
    );
  }

  /// `Couldn't activate {carrier}`
  String title_couldnt_activate_carrier(Object carrier) {
    return Intl.message(
      'Couldn\'t activate $carrier',
      name: 'title_couldnt_activate_carrier',
      desc: '',
      args: [carrier],
    );
  }

  /// `Couldn't activate service`
  String get title_couldnt_activate_carrier_no_name {
    return Intl.message(
      'Couldn\'t activate service',
      name: 'title_couldnt_activate_carrier_no_name',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong while trying to activate your number.`
  String get body_something_went_wrong {
    return Intl.message(
      'Something went wrong while trying to activate your number.',
      name: 'body_something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Network not activated`
  String get title_network_not_activated {
    return Intl.message(
      'Network not activated',
      name: 'title_network_not_activated',
      desc: '',
      args: [],
    );
  }

  /// `You may need the {eid} for this device.`
  String detail_may_need_eid_number(Object eid) {
    return Intl.message(
      'You may need the $eid for this device.',
      name: 'detail_may_need_eid_number',
      desc: '',
      args: [eid],
    );
  }

  /// `There’s an issue with your SIM profile. To fix the issue, contact {carrier} at {tel}.`
  String body_issue_with_sim_profile(Object carrier, Object tel) {
    return Intl.message(
      'There’s an issue with your SIM profile. To fix the issue, contact $carrier at $tel.',
      name: 'body_issue_with_sim_profile',
      desc: '',
      args: [carrier, tel],
    );
  }

  /// `There's an issue with your SIM profile. To fix the issue, contact {carrier}.`
  String body_issue_with_sim_profile_no_tel(Object carrier) {
    return Intl.message(
      'There\'s an issue with your SIM profile. To fix the issue, contact $carrier.',
      name: 'body_issue_with_sim_profile_no_tel',
      desc: '',
      args: [carrier],
    );
  }

  /// `Operation code`
  String get operation_code_text {
    return Intl.message(
      'Operation code',
      name: 'operation_code_text',
      desc: '',
      args: [],
    );
  }

  /// `Error code`
  String get error_code_text {
    return Intl.message(
      'Error code',
      name: 'error_code_text',
      desc: '',
      args: [],
    );
  }

  /// `You can provide the following information to your operator:\n{operateCode}\n{euiccResult}`
  String detail_provide_info_to_carrier(
    Object operateCode,
    Object euiccResult,
  ) {
    return Intl.message(
      'You can provide the following information to your operator:\n$operateCode\n$euiccResult',
      name: 'detail_provide_info_to_carrier',
      desc: '',
      args: [operateCode, euiccResult],
    );
  }

  /// `You can provide the following information to your operator:`
  String get detail_provide_info_to_carrier1 {
    return Intl.message(
      'You can provide the following information to your operator:',
      name: 'detail_provide_info_to_carrier1',
      desc: '',
      args: [],
    );
  }

  /// `Profile already downloaded`
  String get title_profile_already_downloaded {
    return Intl.message(
      'Profile already downloaded',
      name: 'title_profile_already_downloaded',
      desc: '',
      args: [],
    );
  }

  /// `No connection`
  String get title_no_connection {
    return Intl.message(
      'No connection',
      name: 'title_no_connection',
      desc: '',
      args: [],
    );
  }

  /// `You will need a Wi-Fi or mobile connection to download a SIM profile.`
  String get body_need_wifi_or_mobile_connection {
    return Intl.message(
      'You will need a Wi-Fi or mobile connection to download a SIM profile.',
      name: 'body_need_wifi_or_mobile_connection',
      desc: '',
      args: [],
    );
  }

  /// `Subject code`
  String get subject_code_text {
    return Intl.message(
      'Subject code',
      name: 'subject_code_text',
      desc: '',
      args: [],
    );
  }

  /// `Reason code`
  String get reason_code_text {
    return Intl.message(
      'Reason code',
      name: 'reason_code_text',
      desc: '',
      args: [],
    );
  }

  /// `Checking network info…`
  String get get_default_sub_title {
    return Intl.message(
      'Checking network info…',
      name: 'get_default_sub_title',
      desc: '',
      args: [],
    );
  }

  /// `This may take a few minutes`
  String get q_download_sub_text {
    return Intl.message(
      'This may take a few minutes',
      name: 'q_download_sub_text',
      desc: '',
      args: [],
    );
  }

  /// `Activating {carrier}…`
  String q_download_sub_title(Object carrier) {
    return Intl.message(
      'Activating $carrier…',
      name: 'q_download_sub_title',
      desc: '',
      args: [carrier],
    );
  }

  /// `Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact your operator.`
  String get body_make_sure_not_already_downloaded_no_name {
    return Intl.message(
      'Make sure that the selected SIM profile hasn’t been downloaded on this device or another device.\n\nFor more help, contact your operator.',
      name: 'body_make_sure_not_already_downloaded_no_name',
      desc: '',
      args: [],
    );
  }

  /// `Profile List`
  String get profile_list {
    return Intl.message(
      'Profile List',
      name: 'profile_list',
      desc: '',
      args: [],
    );
  }

  /// `Profile Detail`
  String get profile_detail {
    return Intl.message(
      'Profile Detail',
      name: 'profile_detail',
      desc: '',
      args: [],
    );
  }

  /// `Device Name`
  String get device_name {
    return Intl.message('Device Name', name: 'device_name', desc: '', args: []);
  }

  /// `Set up device network`
  String get config_device_network {
    return Intl.message(
      'Set up device network',
      name: 'config_device_network',
      desc: '',
      args: [],
    );
  }

  /// `Device Model`
  String get device_type {
    return Intl.message(
      'Device Model',
      name: 'device_type',
      desc: '',
      args: [],
    );
  }

  /// `Device Vendor`
  String get device_company {
    return Intl.message(
      'Device Vendor',
      name: 'device_company',
      desc: '',
      args: [],
    );
  }

  /// `External portal`
  String get external_portal {
    return Intl.message(
      'External portal',
      name: 'external_portal',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get profile_active {
    return Intl.message('Active', name: 'profile_active', desc: '', args: []);
  }

  /// `Inactive`
  String get profile_inactive {
    return Intl.message(
      'Inactive',
      name: 'profile_inactive',
      desc: '',
      args: [],
    );
  }

  /// `Downloaded SIM`
  String get downloaded_sim {
    return Intl.message(
      'Downloaded SIM',
      name: 'downloaded_sim',
      desc: '',
      args: [],
    );
  }

  /// `ICCID`
  String get profile_iccid {
    return Intl.message('ICCID', name: 'profile_iccid', desc: '', args: []);
  }

  /// `roaming`
  String get roaming {
    return Intl.message('roaming', name: 'roaming', desc: '', args: []);
  }

  /// `data`
  String get data {
    return Intl.message('data', name: 'data', desc: '', args: []);
  }

  /// `APN`
  String get apn {
    return Intl.message('APN', name: 'apn', desc: '', args: []);
  }

  /// `APN name`
  String get apn_name {
    return Intl.message('APN name', name: 'apn_name', desc: '', args: []);
  }

  /// `Password`
  String get apn_password {
    return Intl.message('Password', name: 'apn_password', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `APN Setting`
  String get apn_setting {
    return Intl.message('APN Setting', name: 'apn_setting', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Please input {content}`
  String input_s(Object content) {
    return Intl.message(
      'Please input $content',
      name: 'input_s',
      desc: '',
      args: [content],
    );
  }

  /// `Save failed`
  String get save_failed {
    return Intl.message('Save failed', name: 'save_failed', desc: '', args: []);
  }

  /// `Connection failure.`
  String get connect_wifi_failed {
    return Intl.message(
      'Connection failure.',
      name: 'connect_wifi_failed',
      desc: '',
      args: [],
    );
  }

  /// `The current data connection is not available`
  String get wifi_list_title {
    return Intl.message(
      'The current data connection is not available',
      name: 'wifi_list_title',
      desc: '',
      args: [],
    );
  }

  /// `Profile Name`
  String get profile_name {
    return Intl.message(
      'Profile Name',
      name: 'profile_name',
      desc: '',
      args: [],
    );
  }

  /// `The current device is not connected to the network.`
  String get device_network_error {
    return Intl.message(
      'The current device is not connected to the network.',
      name: 'device_network_error',
      desc: '',
      args: [],
    );
  }

  /// `Wi-Fi name`
  String get wifiName {
    return Intl.message('Wi-Fi name', name: 'wifiName', desc: '', args: []);
  }

  /// `Go to Settings to view your Wi-Fi information`
  String get checkWifiInfo {
    return Intl.message(
      'Go to Settings to view your Wi-Fi information',
      name: 'checkWifiInfo',
      desc: '',
      args: [],
    );
  }

  /// `Device IP Address`
  String get ip_address {
    return Intl.message(
      'Device IP Address',
      name: 'ip_address',
      desc: '',
      args: [],
    );
  }

  /// `Port`
  String get port {
    return Intl.message('Port', name: 'port', desc: '', args: []);
  }

  /// `{content} is copied!`
  String content_is_copied(Object content) {
    return Intl.message(
      '$content is copied!',
      name: 'content_is_copied',
      desc: '',
      args: [content],
    );
  }

  /// `confirmation code`
  String get confirmation_code_title {
    return Intl.message(
      'confirmation code',
      name: 'confirmation_code_title',
      desc: '',
      args: [],
    );
  }

  /// `Needs your consent to allow profile policy rules. This step is required by your carrier.`
  String get policy_rule_text {
    return Intl.message(
      'Needs your consent to allow profile policy rules. This step is required by your carrier.',
      name: 'policy_rule_text',
      desc: '',
      args: [],
    );
  }

  /// `Enter the confirmation code that your carrier gave you. This step is required by your carrier.`
  String get confirmation_code_text {
    return Intl.message(
      'Enter the confirmation code that your carrier gave you. This step is required by your carrier.',
      name: 'confirmation_code_text',
      desc: '',
      args: [],
    );
  }

  /// `Profile Type`
  String get profile_type {
    return Intl.message(
      'Profile Type',
      name: 'profile_type',
      desc: '',
      args: [],
    );
  }

  /// `Provider`
  String get service_provider_name {
    return Intl.message(
      'Provider',
      name: 'service_provider_name',
      desc: '',
      args: [],
    );
  }

  /// `SIM card`
  String get sim_card {
    return Intl.message('SIM card', name: 'sim_card', desc: '', args: []);
  }

  /// `Prompt`
  String get sim_tips {
    return Intl.message('Prompt', name: 'sim_tips', desc: '', args: []);
  }

  /// `SIM card detected inserted into phone`
  String get sim_insert_content {
    return Intl.message(
      'SIM card detected inserted into phone',
      name: 'sim_insert_content',
      desc: '',
      args: [],
    );
  }

  /// `SIM card removed!`
  String get sim_unplugged {
    return Intl.message(
      'SIM card removed!',
      name: 'sim_unplugged',
      desc: '',
      args: [],
    );
  }

  /// `Bluetooth data length size setting`
  String get ble_data_len_size_set {
    return Intl.message(
      'Bluetooth data length size setting',
      name: 'ble_data_len_size_set',
      desc: '',
      args: [],
    );
  }

  /// `Once you do that, you need to restart your Bluetooth device. If the configuration is incorrect, it will cause the device to fail to connect, so use caution!`
  String get ble_size_set_remind {
    return Intl.message(
      'Once you do that, you need to restart your Bluetooth device. If the configuration is incorrect, it will cause the device to fail to connect, so use caution!',
      name: 'ble_size_set_remind',
      desc: '',
      args: [],
    );
  }

  /// `Connection timeout, please note that the bluetooth data length is set correctly in the Settings.`
  String get device_connect_timeout {
    return Intl.message(
      'Connection timeout, please note that the bluetooth data length is set correctly in the Settings.',
      name: 'device_connect_timeout',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
