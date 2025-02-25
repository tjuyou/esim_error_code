// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static String m0(carrier) => "Ваше устройство заблокировано {перевозчик}.";

  static String m1(carrier, tel) =>
      "Возникла проблема с Вашим SIM-профилем. Чтобы исправить проблему, свяжитесь ${carrier} по ${tel}.";

  static String m2(carrier) =>
      "Возникла проблема с Вашим SIM-профилем. Чтобы исправить проблему, свяжитесь ${carrier}.";

  static String m3(carrier, tel) =>
      "Убедитесь, что выбранный сим профиль еще не загружено на этом устройстве или другом устройстве.\n\nДля получения дополнительной помощи, свяжитесь с ${carrier} по ${tel}";

  static String m4(carrier) =>
      "Убедитесь, что выбранный сим профиль еще не загружено на этом устройстве или другом устройстве.\n\nДля получения дополнительной помощи, свяжитесь с ${carrier}";

  static String m5(carrier) => "Имя карты: ${carrier}";

  static String m6(carrier) => "eSIM ${carrier} активирована";

  static String m7(mode) => "Режим соединения:${mode}";

  static String m8(content) => "${content} скопирован! ";

  static String m9(carrier, tel) =>
      "Свяжитесь с ${carrier} по ${tel}, чтобы узнать, может ли устройство быть разблокировано.";

  static String m10(carrier) =>
      "Свяжитесь с ${carrier}, чтобы узнать, может ли устройство быть разблокировано.";

  static String m11(eid) =>
      "Вам может понадобиться ${eid} для этого устройства.";

  static String m12(operateCode, euiccResult) =>
      "Вы можете предоставить следующую информацию для вашего оператора:\n${operateCode}\n${euiccResult}";

  static String m13(time) => "Время загрузки:${time}";

  static String m14(iccid) => "ICCID:${iccid}";

  static String m15(content) => "Пожалуйста введите ${content}";

  static String m16(carrier) => "Активация eSIM ${carrier}...";

  static String m17(carrier) =>
      "Один номер ${carrier} доступен для этого устройства. После активации оператор ${carrier} может начать взимать плату за услуги.";

  static String m18(carrier) => "Использовать eSIM ${carrier}?";

  static String m19(carrier) => "Невозможно активировать ${carrier}";

  static String m20(version) => "Версия:${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about_us": MessageLookupByLibrary.simpleMessage("О программе"),
    "activate": MessageLookupByLibrary.simpleMessage("Активировать"),
    "activate_failed": MessageLookupByLibrary.simpleMessage(
      "Активация не удалась. Пожалуйста, попробуйте еще раз или обратитесь к Вашему оператору",
    ),
    "activate_mode": MessageLookupByLibrary.simpleMessage(
      "Пакеты не найдены, пожалуйста, выберите как следует:",
    ),
    "activation_code": MessageLookupByLibrary.simpleMessage("Код активации"),
    "add_by_wifi": MessageLookupByLibrary.simpleMessage(
      "После удаления, добавьте снова",
    ),
    "add_device": MessageLookupByLibrary.simpleMessage("Добавить устройство"),
    "alias": MessageLookupByLibrary.simpleMessage("Установить ID устройства "),
    "apn": MessageLookupByLibrary.simpleMessage("APN"),
    "apn_name": MessageLookupByLibrary.simpleMessage("APN имя "),
    "apn_password": MessageLookupByLibrary.simpleMessage("Пароль "),
    "apn_setting": MessageLookupByLibrary.simpleMessage("Настройки APN "),
    "app_name": MessageLookupByLibrary.simpleMessage("eSIM Manager"),
    "available": MessageLookupByLibrary.simpleMessage("Доступен"),
    "ble_data_len_size_set": MessageLookupByLibrary.simpleMessage(
      "Настройка размера длины данных Bluetooth",
    ),
    "ble_size_set_remind": MessageLookupByLibrary.simpleMessage(
      "Как только вы это сделаете, вам нужно будет перезагрузить устройство Bluetooth. Если конфигурация неправильная, устройство не сможет подключиться, поэтому будьте осторожны.",
    ),
    "bluetooth": MessageLookupByLibrary.simpleMessage("Bluetooth"),
    "body_check_qr_code_or_go_back": MessageLookupByLibrary.simpleMessage(
      "Убедитесь, что вы сканируете правильный QR-код. Чтобы повторить попытку сканирования, вернитесь к предыдущему шагу.",
    ),
    "body_device_is_locked": m0,
    "body_device_is_locked_no_name": MessageLookupByLibrary.simpleMessage(
      "Ваше устройство заблокировано.",
    ),
    "body_issue_with_sim_profile": m1,
    "body_issue_with_sim_profile_no_name": MessageLookupByLibrary.simpleMessage(
      "Возникла проблема с SIM-профиля. Чтобы исправить проблему, обратитесь к вашему оператору.",
    ),
    "body_issue_with_sim_profile_no_tel": m2,
    "body_make_sure_not_already_downloaded": m3,
    "body_make_sure_not_already_downloaded_no_name":
        MessageLookupByLibrary.simpleMessage(
          "Убедитесь, что выбранный SIM профиль еще не загружен на этом устройстве или другом устройстве.\n\nДля получения дополнительной помощи, обратитесь к вашему оператору.",
        ),
    "body_make_sure_not_already_downloaded_no_tel": m4,
    "body_need_wifi_connection": MessageLookupByLibrary.simpleMessage(
      "Вам понадобится Wi-Fi-соединение для загрузки SIM-карты профиля.",
    ),
    "body_need_wifi_or_mobile_connection": MessageLookupByLibrary.simpleMessage(
      "Вам понадобится Wi-Fi или мобильный интернет для загрузки SIM-карты профиля.",
    ),
    "body_not_enough_space_to_download": MessageLookupByLibrary.simpleMessage(
      "Недостаточно памяти, чтобы скачать SIM профиль.",
    ),
    "body_something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "Что-то пошло не так при попытке активировать Ваш номер.",
    ),
    "bootstrap_available": MessageLookupByLibrary.simpleMessage(
      "Сеть по умолчанию включена",
    ),
    "bootstrap_enabled": MessageLookupByLibrary.simpleMessage(
      "Обнаружена сеть по умолчанию, пожалуйста, подождите для доступа к сети",
    ),
    "btn_add_device": MessageLookupByLibrary.simpleMessage(
      "Добавить устройство",
    ),
    "btn_cancel": MessageLookupByLibrary.simpleMessage("Отменить"),
    "btn_connect_ble": MessageLookupByLibrary.simpleMessage(
      "Соединение Bluetooth",
    ),
    "btn_connect_device": MessageLookupByLibrary.simpleMessage(
      "Подключить устройство",
    ),
    "btn_connect_wifi": MessageLookupByLibrary.simpleMessage(
      "Соединение WLAN ",
    ),
    "btn_goto_set": MessageLookupByLibrary.simpleMessage(
      "Перейдите в раздел Настройки >>",
    ),
    "btn_next_step": MessageLookupByLibrary.simpleMessage("Следующий шаг"),
    "btn_ok": MessageLookupByLibrary.simpleMessage("OK"),
    "btn_previous_step": MessageLookupByLibrary.simpleMessage("Предыдущий шаг"),
    "btn_set": MessageLookupByLibrary.simpleMessage("Настройки"),
    "btn_skip": MessageLookupByLibrary.simpleMessage("Пропустить"),
    "btn_start_add_device": MessageLookupByLibrary.simpleMessage(
      "Начните добавлять устройства",
    ),
    "btn_wifi_next": MessageLookupByLibrary.simpleMessage(
      "Устройство подключено, далее",
    ),
    "btn_wifi_set": MessageLookupByLibrary.simpleMessage(
      "Устройство не подключено, зайдите в настройки",
    ),
    "card_name": m5,
    "checkWifiInfo": MessageLookupByLibrary.simpleMessage(
      "Перейдите в настройки, чтобы посмотреть информацию о Wi-Fi",
    ),
    "choose": MessageLookupByLibrary.simpleMessage("Параметры"),
    "choose_done": MessageLookupByLibrary.simpleMessage("Готово"),
    "config_device_network": MessageLookupByLibrary.simpleMessage(
      "Настройка сети",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("Подтвердить "),
    "confirm_acti_success_sub_title_no_phone":
        MessageLookupByLibrary.simpleMessage(
          "Ваш номер готов к использованию. Перезагрузите устройство.",
        ),
    "confirm_acti_success_title": m6,
    "confirmation_code_text": MessageLookupByLibrary.simpleMessage(
      "Введите код подтверждения от Вашего оператора. Этот шаг является обязательным для Вашего оператора.",
    ),
    "confirmation_code_title": MessageLookupByLibrary.simpleMessage(
      "код подтверждения ",
    ),
    "connect_failed": MessageLookupByLibrary.simpleMessage(
      "Сбой подключения. Пожалуйста, проверьте и подключите заново или перезагрузите устройство.",
    ),
    "connect_mode": m7,
    "connect_type": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, выберите тип подключения: Wi-Fi либо Bluetooth",
    ),
    "connect_wifi_failed": MessageLookupByLibrary.simpleMessage(
      "Сбой подключения. ",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Соединено"),
    "connecting": MessageLookupByLibrary.simpleMessage("Подключение"),
    "content_is_copied": m8,
    "copyright_content": MessageLookupByLibrary.simpleMessage(
      "Это приложение является собственностью компании Linksfield. Оно помогает пользователю управлять E-SIM оборудованием через WLAN либо Bluetooth подключения. Оно помогает устройству активировать SIM-карту, может удалить SIM-карту и производит другие операции.",
    ),
    "data": MessageLookupByLibrary.simpleMessage("Данные"),
    "delete": MessageLookupByLibrary.simpleMessage("Удалить"),
    "delete_device": MessageLookupByLibrary.simpleMessage("Удалить"),
    "delete_esim": MessageLookupByLibrary.simpleMessage("Удалить SIM-карту"),
    "delete_tip": MessageLookupByLibrary.simpleMessage(
      "Внимание: SIM-карта не может быть восстановлена после удаления.",
    ),
    "detail_contact_carrier_for_more_help":
        MessageLookupByLibrary.simpleMessage(
          "Для получения справки, обратитесь к вашему оператору.",
        ),
    "detail_contact_carrier_to_unlock": m9,
    "detail_contact_carrier_to_unlock_no_name":
        MessageLookupByLibrary.simpleMessage(
          "Свяжитесь с Вашим оператором, чтобы узнать, может ли устройство быть разблокировано.",
        ),
    "detail_contact_carrier_to_unlock_no_tel": m10,
    "detail_delete_a_profile_before_retrying":
        MessageLookupByLibrary.simpleMessage(
          "Удалите профиль в настройках, затем попробуйте снова.",
        ),
    "detail_may_need_eid_number": m11,
    "detail_provide_info_to_carrier": m12,
    "detail_provide_info_to_carrier1": MessageLookupByLibrary.simpleMessage(
      "Вы можете предоставить следующую информацию для вашего оператора:",
    ),
    "detail_try_adding_again": MessageLookupByLibrary.simpleMessage(
      "После подключения, попробуйте добавить мобильную сеть снова.",
    ),
    "device_company": MessageLookupByLibrary.simpleMessage(
      "Производитель устройства ",
    ),
    "device_connect_timeout": MessageLookupByLibrary.simpleMessage(
      "Время ожидания соединения истекает, обратите внимание на то, правильно ли установлен размер длины данных Bluetooth в настройках.",
    ),
    "device_detail": MessageLookupByLibrary.simpleMessage(
      "Информация об устройстве",
    ),
    "device_disconnected": MessageLookupByLibrary.simpleMessage(
      "Устройство было отключено, подключите его повторно",
    ),
    "device_name": MessageLookupByLibrary.simpleMessage("Имя устройства"),
    "device_network_error": MessageLookupByLibrary.simpleMessage(
      "Текущее устройство не подключено к сети. ",
    ),
    "device_type": MessageLookupByLibrary.simpleMessage("Модель устройства"),
    "device_unavailable": MessageLookupByLibrary.simpleMessage(
      "Устройство недоступно, пожалуйста, проверьте",
    ),
    "disable": MessageLookupByLibrary.simpleMessage("Отключить"),
    "disable_esim": MessageLookupByLibrary.simpleMessage(
      "Отключение SIM-карты",
    ),
    "disable_tip": MessageLookupByLibrary.simpleMessage(
      "Когда SIM-карта отключена, службы не будут работать.",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("Не включено"),
    "disconnect_content": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, включите мобильную сеть в настройках системы.",
    ),
    "disconnect_net": MessageLookupByLibrary.simpleMessage(
      "Эта сеть не включена",
    ),
    "disconnected": MessageLookupByLibrary.simpleMessage("не подключен"),
    "download_time": m13,
    "downloadable_qr": MessageLookupByLibrary.simpleMessage("Активировать код"),
    "downloadable_tips": MessageLookupByLibrary.simpleMessage(
      "Список показывает, что Вы хотите активировать номер, нажмите кнопку Скачать.",
    ),
    "downloaded_sim": MessageLookupByLibrary.simpleMessage("Скачанные SIM"),
    "downloading": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, подождите, идет проверка",
    ),
    "empty_device": MessageLookupByLibrary.simpleMessage(
      "Нет подключенных устройств.",
    ),
    "empty_list": MessageLookupByLibrary.simpleMessage("Список пустой"),
    "enable": MessageLookupByLibrary.simpleMessage("Включить"),
    "enable_esim": MessageLookupByLibrary.simpleMessage("Включение SIM-карты"),
    "enable_tip": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, подождите для активации пакета услуг.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Включено"),
    "error_code_text": MessageLookupByLibrary.simpleMessage("Код ошибки "),
    "error_title": MessageLookupByLibrary.simpleMessage("Ошибка сканирования"),
    "external_portal": MessageLookupByLibrary.simpleMessage("Внешний портал "),
    "gallery": MessageLookupByLibrary.simpleMessage("Выбрать из альбома"),
    "get_default_sub_title": MessageLookupByLibrary.simpleMessage(
      "Проверка сети…",
    ),
    "goto_mall": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, сделайте покупку",
    ),
    "help": MessageLookupByLibrary.simpleMessage("Помощь"),
    "iccid": m14,
    "input_alias": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, назовите устройство",
    ),
    "input_alias_tips": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, назовите устройство",
    ),
    "input_esim_name": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, назовите SIM-карту",
    ),
    "input_name": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, назовите SIM-карту",
    ),
    "input_s": m15,
    "ip_address": MessageLookupByLibrary.simpleMessage("IP-адрес устройства "),
    "network_error": MessageLookupByLibrary.simpleMessage(
      "Когда устройство или мобильный телефон не может работать с сетью.",
    ),
    "network_tips": MessageLookupByLibrary.simpleMessage(
      "###### Решение \\n1. Если у вас возникли проблемы с использованием мобильной сети оператора, перезагрузите часы или повторно подключите к сети \\n2. Отсканируйте QR-код и нажмите \\\"использовать мобильную сеть и сохранить подключение к беспроводной сети\" \\n + Если вы выберете \"продолжать использовать беспроводную сеть\" или если системное приглашение не появится, вы можете попробовать повторно подключить устройство к беспроводной сети и снова вызвать системное приглашение; \\n + Если вы по-прежнему не можете подключиться к сети после попытки повторного подключения устройства, проверьте Bluetooth-соединение и подключите часы к приложению используя Bluetooth;\\n + Если все вышеперечисленное не помогло, проверьте соединение Wi-Fi и Bluetooth в телефоне повторно. Проделайте все шаги еще раз.",
    ),
    "network_unavailable": MessageLookupByLibrary.simpleMessage(
      "Сеть недоступна, пожалуйста, проверьте",
    ),
    "not_downloaded": MessageLookupByLibrary.simpleMessage("SIM не загружена"),
    "open": MessageLookupByLibrary.simpleMessage("Открыть"),
    "operate_failed": MessageLookupByLibrary.simpleMessage(
      "Действие не удалось",
    ),
    "operate_tips": MessageLookupByLibrary.simpleMessage(
      "Примечание: пожалуйста, убедитесь, что сеть доступна. В случае ошибки, пожалуйста, нажмите здесь",
    ),
    "operation_code_text": MessageLookupByLibrary.simpleMessage("Код операции"),
    "package_mall": MessageLookupByLibrary.simpleMessage("Магазин приложений"),
    "password": MessageLookupByLibrary.simpleMessage("Пароль "),
    "permission_denied": MessageLookupByLibrary.simpleMessage("Нет разрешения"),
    "please_input": MessageLookupByLibrary.simpleMessage("Пожалуйста, введите"),
    "please_input_activation_code": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, введите код активации ",
    ),
    "policy_rule_text": MessageLookupByLibrary.simpleMessage(
      "Нужно ваше согласие, чтобы согласиться с правилами политики  профиля. Этот шаг является обязательным для Вашего оператора. ",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Порт "),
    "profile_active": MessageLookupByLibrary.simpleMessage("Активирован"),
    "profile_detail": MessageLookupByLibrary.simpleMessage("Детали профиля"),
    "profile_iccid": MessageLookupByLibrary.simpleMessage("ICCID "),
    "profile_inactive": MessageLookupByLibrary.simpleMessage("Деактивирован "),
    "profile_list": MessageLookupByLibrary.simpleMessage("Список профилей"),
    "profile_name": MessageLookupByLibrary.simpleMessage("Имя профиля "),
    "profile_type": MessageLookupByLibrary.simpleMessage("Тип профиля"),
    "q_download_sub_text": MessageLookupByLibrary.simpleMessage(
      "Это может занять несколько минут",
    ),
    "q_download_sub_title": m16,
    "q_result_download_metadata_text": m17,
    "qr_confirm": MessageLookupByLibrary.simpleMessage(
      "Подтвердить информацию о SIM",
    ),
    "qr_null": MessageLookupByLibrary.simpleMessage("QR-код не найден"),
    "qr_unavailable": MessageLookupByLibrary.simpleMessage(
      "QR-код недоступен. Пожалуйста, попробуйте снова.",
    ),
    "reason_code_text": MessageLookupByLibrary.simpleMessage("Код причины"),
    "rename_illegal": MessageLookupByLibrary.simpleMessage(
      "Имя не может быть использовано",
    ),
    "reset": MessageLookupByLibrary.simpleMessage("Перезагрузить"),
    "reset_confirm": MessageLookupByLibrary.simpleMessage(
      "Вы собираетесь перезагрузить текущее устройство:\n\n1. Перезагрузка устройства никак не повлияет на установленную E-SIM\n\n2. После перезагрузки, вы должны дождаться доступа к сети перед началом процедуры\n\n3. Начните после того, как устройство покажет что оно \"доступно\"",
    ),
    "reset_device": MessageLookupByLibrary.simpleMessage("Сброс устройства "),
    "reset_notice": MessageLookupByLibrary.simpleMessage(
      "Сеть недоступна, пожалуйста, перезагрузите устройство и используйте сеть по умолчанию перед началом процедуры\n\nОбратите внимание:\n\n1. Перезагрузка устройства никак не повлияет на установленную E-SIM\n\n2. После перезагрузки, вы должны дождаться доступа к сети перед началом процедуры\n\n3. Начните после того, как устройство покажет что оно \"доступно\"",
    ),
    "resetting": MessageLookupByLibrary.simpleMessage(
      "Перезагрузка, пожалуйста подождите ",
    ),
    "result_download_title": m18,
    "roaming": MessageLookupByLibrary.simpleMessage("Роуминг "),
    "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
    "save_failed": MessageLookupByLibrary.simpleMessage(
      "Сохранение не удалось",
    ),
    "scan": MessageLookupByLibrary.simpleMessage("Сканировать"),
    "scan_qr": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, отсканируйте QR-код eSIM",
    ),
    "scan_success": MessageLookupByLibrary.simpleMessage(
      "Успешно отсканировано",
    ),
    "search": MessageLookupByLibrary.simpleMessage("Поиск"),
    "search_nothing": MessageLookupByLibrary.simpleMessage(
      "Устройство не найдено, проверьте устройство и попробуйте снова.",
    ),
    "service_provider_name": MessageLookupByLibrary.simpleMessage("Провайдер"),
    "sim_card": MessageLookupByLibrary.simpleMessage("SIM-карта"),
    "sim_insert_content": MessageLookupByLibrary.simpleMessage(
      "Обнаружена вставленная SIM-карта в телефон",
    ),
    "sim_tips": MessageLookupByLibrary.simpleMessage("Подсказка"),
    "sim_unplugged": MessageLookupByLibrary.simpleMessage(
      "SIM-карта извлечена!",
    ),
    "subject_code_text": MessageLookupByLibrary.simpleMessage("Код субъекта"),
    "tap_download": MessageLookupByLibrary.simpleMessage(
      "Нажмите кнопку \"Активировать\" для начала загрузки профиля.",
    ),
    "text_begin_connect": MessageLookupByLibrary.simpleMessage(
      "Нажмите, чтобы начать подключение первого устройства",
    ),
    "text_ble_not_open": MessageLookupByLibrary.simpleMessage(
      "Система обнаружила, что вы не включили функцию Bluetooth вашего мобильного телефона",
    ),
    "text_connect_support": MessageLookupByLibrary.simpleMessage(
      "Поддерживаемые типы подключения: WLAN, Bluetooth",
    ),
    "text_connect_support_bluetooth": MessageLookupByLibrary.simpleMessage(
      "Поддерживаемый тип подключения: Bluetooth",
    ),
    "text_connect_support_none": MessageLookupByLibrary.simpleMessage(
      "Неподдерживаемый тип подключения ",
    ),
    "text_connect_support_wifi": MessageLookupByLibrary.simpleMessage(
      "Поддерживаемый тип подключения: WLAN",
    ),
    "text_device_use_explain": MessageLookupByLibrary.simpleMessage(
      "Инструкции устройства ",
    ),
    "text_divider": MessageLookupByLibrary.simpleMessage(
      "----------  или  ----------",
    ),
    "text_not_find_device": MessageLookupByLibrary.simpleMessage(
      "Не найдено доступных устройств",
    ),
    "text_search": MessageLookupByLibrary.simpleMessage("Поиск"),
    "text_select_connect": MessageLookupByLibrary.simpleMessage(
      "Выберите тип подключения",
    ),
    "text_select_device": MessageLookupByLibrary.simpleMessage(
      "Выбрать устройство",
    ),
    "text_select_device_type": MessageLookupByLibrary.simpleMessage(
      "Выберите модель устройства",
    ),
    "text_upgrade_content": MessageLookupByLibrary.simpleMessage(
      "Обнаружена новая версия приложения, необходимо обновить",
    ),
    "text_upgrade_title": MessageLookupByLibrary.simpleMessage("Обновить"),
    "text_welcome": MessageLookupByLibrary.simpleMessage(
      "Добро пожаловать в eSIM Manager!",
    ),
    "text_wifi_not_open": MessageLookupByLibrary.simpleMessage(
      "Система обнаружила, что вы не включили функцию WLAN вашего мобильного телефона",
    ),
    "text_wifi_set": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, нажмите на кнопку подключения устройств для входа в настройки системы",
    ),
    "text_wifi_use_wifi": MessageLookupByLibrary.simpleMessage(
      "Подключение устройств по WLAN",
    ),
    "text_wifi_use_wlan": MessageLookupByLibrary.simpleMessage(
      "Подключение устройств по WLAN",
    ),
    "tip_reboot": MessageLookupByLibrary.simpleMessage(
      "Успешно, перезагрузите устройство",
    ),
    "tips_1": MessageLookupByLibrary.simpleMessage(
      "1. Пожалуйста, убедитесь, что сеть доступна.",
    ),
    "tips_2": MessageLookupByLibrary.simpleMessage(
      "2. В случае ошибки, пожалуйста, нажмите здесь",
    ),
    "tips_title": MessageLookupByLibrary.simpleMessage("Обратите внимание:"),
    "title_connect_to_wifi": MessageLookupByLibrary.simpleMessage(
      "Подключиться к Wi-Fi",
    ),
    "title_couldnt_activate_carrier": m19,
    "title_couldnt_activate_carrier_no_name":
        MessageLookupByLibrary.simpleMessage("Невозможно активировать услуги"),
    "title_incorrect_qr_code": MessageLookupByLibrary.simpleMessage(
      "Неправильный QR-код",
    ),
    "title_network_not_activated": MessageLookupByLibrary.simpleMessage(
      "Сеть не активирована",
    ),
    "title_no_connection": MessageLookupByLibrary.simpleMessage("Нет связи"),
    "title_profile_already_downloaded": MessageLookupByLibrary.simpleMessage(
      "Профиль уже скачали",
    ),
    "unavailable": MessageLookupByLibrary.simpleMessage("Недоступен"),
    "universal": MessageLookupByLibrary.simpleMessage("Общее Устройство"),
    "user_consent_switch_no_name_title": MessageLookupByLibrary.simpleMessage(
      "Использовать новую SIM?",
    ),
    "version": m20,
    "warning_ble_not_open_content": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, перейдите в настройки системы, чтобы включить Bluetooth",
    ),
    "warning_ble_not_open_title": MessageLookupByLibrary.simpleMessage(
      "Bluetooth выкл",
    ),
    "warning_location_not_open_content": MessageLookupByLibrary.simpleMessage(
      "Пожалуйста, перейдите в системные настройки, чтобы включить функцию позиционирования ",
    ),
    "warning_location_not_open_title": MessageLookupByLibrary.simpleMessage(
      "Позиционирование выкл",
    ),
    "warning_skip_content": MessageLookupByLibrary.simpleMessage(
      "Вы не сможете правильно использовать устройство, пока вы не добавите его",
    ),
    "warning_skip_title": MessageLookupByLibrary.simpleMessage(
      "Добавить позже?",
    ),
    "wifi": MessageLookupByLibrary.simpleMessage("WLAN"),
    "wifiName": MessageLookupByLibrary.simpleMessage("имя Wi-Fi"),
    "wifi_list_title": MessageLookupByLibrary.simpleMessage(
      "Текущее подключение данных недоступно",
    ),
  };
}
