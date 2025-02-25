// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(carrier) => "${carrier} ha bloqueado tu dispositivo.";

  static String m1(carrier, tel) =>
      "Hay un problema con tu perfil de SIM. Para solucionarlo, ponte en contacto con ${carrier} llamando al ${tel}.";

  static String m2(carrier) =>
      "Hay un problema con tu perfil de SIM. Para solucionarlo, ponte en contacto con ${carrier}.";

  static String m3(carrier, tel) =>
      "Comprueba que el perfil de SIM seleccionado no se haya descargado ya en este dispositivo o en otro.\n\nPara obtener más ayuda, ponte en contacto con ${carrier} llamando al ${tel}.";

  static String m4(carrier) =>
      "Comprueba que el perfil de SIM seleccionado no se haya descargado ya en este dispositivo o en otro.\n\nPara obtener más ayuda, ponte en contacto con ${carrier}.";

  static String m5(carrier) => "Nombre del perfil：${carrier}";

  static String m6(carrier) => "${carrier} está activo";

  static String m7(mode) => "Modo de conexión:${mode}";

  static String m8(content) => "${content} copiado";

  static String m9(carrier, tel) =>
      "Para ver si el dispositivo se puede desbloquear, ponte en contacto con ${carrier} llamando al ${tel}.";

  static String m10(carrier) =>
      "Para ver si el dispositivo se puede desbloquear, ponte en contacto con ${carrier}.";

  static String m11(eid) =>
      "Es posible que necesites el ${eid} de este dispositivo.";

  static String m12(operateCode, euiccResult) =>
      "Puedes proporcionar esta información a tu operador:\n${operateCode}\n${euiccResult}";

  static String m13(time) => "Tiempo de descarga:${time}";

  static String m14(iccid) => "ICCID:${iccid}";

  static String m15(content) => "Por favor, introduzca ${content}";

  static String m16(carrier) => "La activación ${carrier}…";

  static String m17(carrier) =>
      "Hay 1 número de ${carrier} disponible para este dispositivo. ${carrier} puede empezar a cobrarte por el servicio cuando lo actives.";

  static String m18(carrier) => "¿Usar ${carrier}?";

  static String m19(carrier) => "No se ha podido activar ${carrier}";

  static String m20(version) => "Versión:${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about_us": MessageLookupByLibrary.simpleMessage("Acerca de"),
    "activate": MessageLookupByLibrary.simpleMessage("Activar"),
    "activate_failed": MessageLookupByLibrary.simpleMessage(
      "Activación fallida. Por favor, inténtalo de nuevo o póngase en contacto con el proveedor de la tarjeta",
    ),
    "activate_mode": MessageLookupByLibrary.simpleMessage(
      "No se han encontrado paquetes, seleccione de la siguiente manera:",
    ),
    "activation_code": MessageLookupByLibrary.simpleMessage(
      "Código de activación",
    ),
    "add_by_wifi": MessageLookupByLibrary.simpleMessage(
      "Por favor, vuelva a agregar después de eliminar",
    ),
    "add_device": MessageLookupByLibrary.simpleMessage("Añadir dispositivo"),
    "alias": MessageLookupByLibrary.simpleMessage(
      "Establecer ID de dispositivo",
    ),
    "apn": MessageLookupByLibrary.simpleMessage("APN"),
    "apn_name": MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
    "apn_password": MessageLookupByLibrary.simpleMessage("La contraseña"),
    "apn_setting": MessageLookupByLibrary.simpleMessage("Configuración de APN"),
    "app_name": MessageLookupByLibrary.simpleMessage("eSIM Manager"),
    "available": MessageLookupByLibrary.simpleMessage("Disponible"),
    "ble_data_len_size_set": MessageLookupByLibrary.simpleMessage(
      "Datos bluetooth longitud tamaño configuración",
    ),
    "ble_size_set_remind": MessageLookupByLibrary.simpleMessage(
      "Una vez que lo hagas, debes reiniciar tu dispositivo Bluetooth. Si la configuración es incorrecta, hará que el dispositivo no se conecte, así que tenga cuidado.",
    ),
    "bluetooth": MessageLookupByLibrary.simpleMessage("Bluetooth"),
    "body_check_qr_code_or_go_back": MessageLookupByLibrary.simpleMessage(
      "Comprueba que el código QR que has escaneado sea el correcto. Para escanearlo de nuevo, vuelve a la pantalla anterior.",
    ),
    "body_device_is_locked": m0,
    "body_device_is_locked_no_name": MessageLookupByLibrary.simpleMessage(
      "Tu dispositivo está bloqueado.",
    ),
    "body_issue_with_sim_profile": m1,
    "body_issue_with_sim_profile_no_name": MessageLookupByLibrary.simpleMessage(
      "Hay un problema con tu perfil de SIM. Para solucionarlo, ponte en contacto con tu operador.",
    ),
    "body_issue_with_sim_profile_no_tel": m2,
    "body_make_sure_not_already_downloaded": m3,
    "body_make_sure_not_already_downloaded_no_name":
        MessageLookupByLibrary.simpleMessage(
          "Asegúrese de que el perfil SIM seleccionado no se haya descargado en este dispositivo o en otro. \n\n para obtener más ayuda, póngase en contacto con su operador.",
        ),
    "body_make_sure_not_already_downloaded_no_tel": m4,
    "body_need_wifi_connection": MessageLookupByLibrary.simpleMessage(
      "Necesitas tener conexión a una red Wi‑Fi para descargar un perfil de SIM.",
    ),
    "body_need_wifi_or_mobile_connection": MessageLookupByLibrary.simpleMessage(
      "Necesitas tener conexión a una red Wi‑Fi o móvil para descargar un perfil de SIM.",
    ),
    "body_not_enough_space_to_download": MessageLookupByLibrary.simpleMessage(
      "No hay suficiente espacio para descargar este perfil de SIM.",
    ),
    "body_something_went_wrong": MessageLookupByLibrary.simpleMessage(
      "No se ha podido activar tu número.",
    ),
    "bootstrap_available": MessageLookupByLibrary.simpleMessage(
      "La red predeterminada está habilitada",
    ),
    "bootstrap_enabled": MessageLookupByLibrary.simpleMessage(
      "La red predeterminada está habilitada, por favor espere el acceso a la red",
    ),
    "btn_add_device": MessageLookupByLibrary.simpleMessage(
      "Añadir dispositivo",
    ),
    "btn_cancel": MessageLookupByLibrary.simpleMessage("Cancelar"),
    "btn_connect_ble": MessageLookupByLibrary.simpleMessage(
      "Conectividad Bluetooth",
    ),
    "btn_connect_device": MessageLookupByLibrary.simpleMessage(
      "Conectar dispositivo",
    ),
    "btn_connect_wifi": MessageLookupByLibrary.simpleMessage("Conexión wlan"),
    "btn_goto_set": MessageLookupByLibrary.simpleMessage(
      "Ir a la configuración >>",
    ),
    "btn_next_step": MessageLookupByLibrary.simpleMessage("Próximo paso"),
    "btn_ok": MessageLookupByLibrary.simpleMessage("Bien"),
    "btn_previous_step": MessageLookupByLibrary.simpleMessage("Paso anterior"),
    "btn_set": MessageLookupByLibrary.simpleMessage("Ajustes"),
    "btn_skip": MessageLookupByLibrary.simpleMessage("Saltar"),
    "btn_start_add_device": MessageLookupByLibrary.simpleMessage(
      "Empezar a agregar dispositivo",
    ),
    "btn_wifi_next": MessageLookupByLibrary.simpleMessage(
      "Dispositivo conectado, Siguiente",
    ),
    "btn_wifi_set": MessageLookupByLibrary.simpleMessage(
      "No hay dispositivo conectado, vaya a la configuración",
    ),
    "card_name": m5,
    "checkWifiInfo": MessageLookupByLibrary.simpleMessage(
      "Vaya a ajustes para ver la información de wi-fi",
    ),
    "choose": MessageLookupByLibrary.simpleMessage("Opción"),
    "choose_done": MessageLookupByLibrary.simpleMessage("Hecho"),
    "config_device_network": MessageLookupByLibrary.simpleMessage(
      "Equipado con red de equipos",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("confirmación"),
    "confirm_acti_success_sub_title_no_phone":
        MessageLookupByLibrary.simpleMessage(
          "Ya deberías poder utilizar el número",
        ),
    "confirm_acti_success_title": m6,
    "confirmation_code_text": MessageLookupByLibrary.simpleMessage(
      "Introduce el código de confirmación que te ha proporcionado tu operador. Este paso es obligatorio.",
    ),
    "confirmation_code_title": MessageLookupByLibrary.simpleMessage(
      "Código de confirmación",
    ),
    "connect_failed": MessageLookupByLibrary.simpleMessage(
      "Fallo de conexión. Por favor, compruebe y vuelva a conectar o reinicie el dispositivo.",
    ),
    "connect_mode": m7,
    "connect_type": MessageLookupByLibrary.simpleMessage(
      "Por favor, seleccione Tipo de conexión compatible: WLAN, Bluetooth",
    ),
    "connect_wifi_failed": MessageLookupByLibrary.simpleMessage(
      "Fallo de conexión.",
    ),
    "connected": MessageLookupByLibrary.simpleMessage("Conectado"),
    "connecting": MessageLookupByLibrary.simpleMessage("Conectando"),
    "content_is_copied": m8,
    "copyright": MessageLookupByLibrary.simpleMessage(
      "Copyright 2022 Enlaces Redes de campo. RESERVADOS TODOS LOS DERECHOS.",
    ),
    "copyright_content": MessageLookupByLibrary.simpleMessage(
      "Esta aplicación es parte de la solución Linksfield ESIM. Puede facilitar al usuario que administre los equipos ESIM sin OperatingInterface y admiten los modos de conexión WLAN, Bluetooth y otros equipos. Permite que el dispositivo active la tarjeta ESIM y descargue el número y puede eliminar el número y otras operaciones.",
    ),
    "corporation_name": MessageLookupByLibrary.simpleMessage(
      "Shenzhen Links Field Internet of Things Technology Co., Ltd",
    ),
    "data": MessageLookupByLibrary.simpleMessage("datos"),
    "delete": MessageLookupByLibrary.simpleMessage("Borrar"),
    "delete_device": MessageLookupByLibrary.simpleMessage("Borrar"),
    "delete_esim": MessageLookupByLibrary.simpleMessage("Eliminar tarjeta SIM"),
    "delete_tip": MessageLookupByLibrary.simpleMessage(
      "Advertencia: no se puede recuperar después de la eliminación.",
    ),
    "detail_contact_carrier_for_more_help":
        MessageLookupByLibrary.simpleMessage(
          "Para obtener más ayuda, ponte en contacto con tu operador.",
        ),
    "detail_contact_carrier_to_unlock": m9,
    "detail_contact_carrier_to_unlock_no_name":
        MessageLookupByLibrary.simpleMessage(
          "Para ver si el dispositivo se puede desbloquear, ponte en contacto con tu operador.",
        ),
    "detail_contact_carrier_to_unlock_no_tel": m10,
    "detail_delete_a_profile_before_retrying":
        MessageLookupByLibrary.simpleMessage(
          "Elimina un perfil en Ajustes y vuelve a intentarlo.",
        ),
    "detail_may_need_eid_number": m11,
    "detail_provide_info_to_carrier": m12,
    "detail_provide_info_to_carrier1": MessageLookupByLibrary.simpleMessage(
      "Puedes proporcionar esta información a tu operador:",
    ),
    "detail_try_adding_again": MessageLookupByLibrary.simpleMessage(
      "Una vez que te hayas conectado, prueba a añadir una red móvil de nuevo.",
    ),
    "device_company": MessageLookupByLibrary.simpleMessage(
      "Fabricantes de equipos",
    ),
    "device_connect_timeout": MessageLookupByLibrary.simpleMessage(
      "Se agota el tiempo de espera de la conexión, preste atención a si el tamaño de la longitud de los datos Bluetooth en la configuración está configurado correctamente.",
    ),
    "device_detail": MessageLookupByLibrary.simpleMessage("Información"),
    "device_disconnected": MessageLookupByLibrary.simpleMessage(
      "El dispositivo está desconectado,por favor,reconectar",
    ),
    "device_name": MessageLookupByLibrary.simpleMessage(
      "Nombre del dispositivo",
    ),
    "device_network_error": MessageLookupByLibrary.simpleMessage(
      "No hay conexión a internet en el dispositivo actual.",
    ),
    "device_type": MessageLookupByLibrary.simpleMessage(
      "Categorías de equipos",
    ),
    "device_unavailable": MessageLookupByLibrary.simpleMessage(
      "El dispositivo no está disponible.",
    ),
    "disable": MessageLookupByLibrary.simpleMessage("Desactivado"),
    "disable_esim": MessageLookupByLibrary.simpleMessage(
      "Deshabilitar la tarjeta SIM",
    ),
    "disable_tip": MessageLookupByLibrary.simpleMessage(
      "Está fuera de servicio cuando esta SIM se deshabilitó.",
    ),
    "disabled": MessageLookupByLibrary.simpleMessage("No disponible"),
    "disconnect_content": MessageLookupByLibrary.simpleMessage(
      "Por favor, encienda la red móvil en la configuración del sistema.",
    ),
    "disconnect_net": MessageLookupByLibrary.simpleMessage(
      "La red no está encendida",
    ),
    "disconnected": MessageLookupByLibrary.simpleMessage("Desconectado"),
    "download_time": m13,
    "downloadable_qr": MessageLookupByLibrary.simpleMessage("Código a activar"),
    "downloadable_tips": MessageLookupByLibrary.simpleMessage(
      "Esta lista le muestra los números a activar, haga clic para descargar.",
    ),
    "downloaded_sim": MessageLookupByLibrary.simpleMessage("Descargar la sim"),
    "downloading": MessageLookupByLibrary.simpleMessage(
      "Por favor, espere pacientemente durante la verificación",
    ),
    "empty_device": MessageLookupByLibrary.simpleMessage(
      "No hay dispositivos conectados todavía.",
    ),
    "empty_list": MessageLookupByLibrary.simpleMessage(
      "La lista está en blanco.",
    ),
    "enable": MessageLookupByLibrary.simpleMessage("Permitir"),
    "enable_esim": MessageLookupByLibrary.simpleMessage(
      "Habilitar la tarjeta SIM",
    ),
    "enable_tip": MessageLookupByLibrary.simpleMessage(
      "Por favor, espere la activación del servicio del paquete.",
    ),
    "enabled": MessageLookupByLibrary.simpleMessage("Activado"),
    "error_code_text": MessageLookupByLibrary.simpleMessage("Código de error"),
    "error_title": MessageLookupByLibrary.simpleMessage(
      "Fallo de la exploración",
    ),
    "external_portal": MessageLookupByLibrary.simpleMessage(
      "El portal externo",
    ),
    "gallery": MessageLookupByLibrary.simpleMessage("Elige entre el álbum"),
    "get_default_sub_title": MessageLookupByLibrary.simpleMessage(
      "Comprobación de la información de la red…",
    ),
    "goto_mall": MessageLookupByLibrary.simpleMessage(
      "Por favor haga una compra en Package Mall >>",
    ),
    "help": MessageLookupByLibrary.simpleMessage("Ayuda"),
    "iccid": m14,
    "input_alias": MessageLookupByLibrary.simpleMessage(
      "Por favor nombre el dispositivo",
    ),
    "input_alias_tips": MessageLookupByLibrary.simpleMessage(
      "Por favor nombre el dispositivo",
    ),
    "input_esim_name": MessageLookupByLibrary.simpleMessage(
      "Por favor nombre la sim",
    ),
    "input_name": MessageLookupByLibrary.simpleMessage(
      "Por favor nombre la sim",
    ),
    "input_s": m15,
    "ip_address": MessageLookupByLibrary.simpleMessage(
      "Dirección IP del dispositivo",
    ),
    "network_error": MessageLookupByLibrary.simpleMessage(
      "Cuando su dispositivo o teléfono móvil no puede funcionar con la red",
    ),
    "network_tips": MessageLookupByLibrary.simpleMessage(
      "###### SOLUCIÓN \n1. Si tiene problemas para usar la red móvil del dispositivo, puede intentar reiniciar el dispositivo o volver a conectar el dispositivo \n2. Si está administrando el dispositivo QRCODE \n   + Si el teléfono aparece opciones: \"Continúe usando la red inalámbrica\", \"Use la red móvil, pero mantenga la red inalámbrica conectada\" Haga clic en \"Usar red móvil pero mantenga la conexión de red inalámbrica\" para continuar completando la operación \n   + Si selecciona \"Continuar utilizando la red inalámbrica\" ​​cuando se le solicita o si el mensaje del sistema no se incluye, puede intentar volver a conectar el dispositivo a la red inalámbrica y volver a activar el indicador del sistema; \n   + Si aún no puede usar la red después de intentar volver a conectar el dispositivo, puede verificar si el dispositivo admite la función Bluetooth, conecte el dispositivo a la aplicación con el método de conexión Bluetooth y finalmente complete la administración de la dispositivo QRCODE; \n   + Si intenta todos los esquemas anteriores, no puede completar la administración QRCODE, siga los siguientes pasos para la administración del dispositivo:\n\n       ① Ingrese la página de detalles de la conexión de red WLAN de teléfono móvil;\n\n      ② Registre la configuración de IP de la conexión de red WLAN actual;\n\n      ③ Establezca el dispositivo WLAN Network IP Configuración a \"Manual\";\n\n      ④ Rellene la configuración de IP registrada en el paso ② en la configuración de IP;\n\n      ⑤ Regresar a la aplicación para completar la operación QRCode;\n\n      ⑥ Después de confirmar que el dispositivo QRCODE se ha \"activado\", cambie la configuración de IP de conexión de red de dispositivos WLAN Volver a \"Automático\".",
    ),
    "network_unavailable": MessageLookupByLibrary.simpleMessage(
      "La red no está disponible.",
    ),
    "not_downloaded": MessageLookupByLibrary.simpleMessage("SIM no descargado"),
    "open": MessageLookupByLibrary.simpleMessage("Abierto"),
    "operate_failed": MessageLookupByLibrary.simpleMessage("Operación fallida"),
    "operate_tips": MessageLookupByLibrary.simpleMessage(
      "Aviso: Asegúrese de que la red esté disponible. Si falla, por favor haga clic aquí ",
    ),
    "operation_code_text": MessageLookupByLibrary.simpleMessage(
      "Código de operación",
    ),
    "package_mall": MessageLookupByLibrary.simpleMessage("Paquetes"),
    "password": MessageLookupByLibrary.simpleMessage("La contraseña"),
    "permission_denied": MessageLookupByLibrary.simpleMessage(
      "El permiso está prohibido",
    ),
    "please_input": MessageLookupByLibrary.simpleMessage("Por favor escriba"),
    "please_input_activation_code": MessageLookupByLibrary.simpleMessage(
      "Por favor, complete el código de activación",
    ),
    "policy_rule_text": MessageLookupByLibrary.simpleMessage(
      "Necesita su consentimiento para permitir las reglas de la política de perfil. Este paso es requerido por su transportista.",
    ),
    "port": MessageLookupByLibrary.simpleMessage("Puerto"),
    "profile_active": MessageLookupByLibrary.simpleMessage("activo"),
    "profile_detail": MessageLookupByLibrary.simpleMessage(
      "Detalle del perfil",
    ),
    "profile_iccid": MessageLookupByLibrary.simpleMessage("ICCID"),
    "profile_inactive": MessageLookupByLibrary.simpleMessage("inactivo"),
    "profile_list": MessageLookupByLibrary.simpleMessage("Lista de perfil"),
    "profile_name": MessageLookupByLibrary.simpleMessage("Nombre del perfil"),
    "profile_type": MessageLookupByLibrary.simpleMessage("Tipo de perfil"),
    "q_download_sub_text": MessageLookupByLibrary.simpleMessage(
      "Esto puede tomar algunos minutos",
    ),
    "q_download_sub_title": m16,
    "q_result_download_metadata_text": m17,
    "qr_confirm": MessageLookupByLibrary.simpleMessage(
      "Confirmar Información de SIM",
    ),
    "qr_null": MessageLookupByLibrary.simpleMessage(
      "No se han encontrado códigos QR disponibles",
    ),
    "qr_unavailable": MessageLookupByLibrary.simpleMessage(
      "El código QR no está disponible. Inténtalo de nuevo",
    ),
    "reason_code_text": MessageLookupByLibrary.simpleMessage(
      "Código de motivo",
    ),
    "rename_illegal": MessageLookupByLibrary.simpleMessage(
      "No se puede usar este nombre",
    ),
    "reset": MessageLookupByLibrary.simpleMessage("Reset"),
    "reset_confirm": MessageLookupByLibrary.simpleMessage(
      "Está a punto de reiniciar el dispositivo actual:\n\n1. Reiniciar el dispositivo no afecta a la descarga actual de Esim\n\n2. Después de reiniciar, debe esperar el acceso predeterminado a la red antes de operar\n\n3. Por favor, opere después de que el semáforo del dispositivo muestre \"disponible\"",
    ),
    "reset_device": MessageLookupByLibrary.simpleMessage(
      "Dispositivo de reinicio",
    ),
    "reset_notice": MessageLookupByLibrary.simpleMessage(
      "La red no está disponible. Reinicie el dispositivo y use la red predeterminada antes de proceder\n\nNota:\n\n1. Reiniciar el dispositivo no afecta a la descarga actual de Esim\n\n2. Después de reiniciar, debe esperar el acceso predeterminado a la red antes de operar\n\n3. Por favor, opere después de que el semáforo del dispositivo muestre \"disponible\"",
    ),
    "resetting": MessageLookupByLibrary.simpleMessage(
      "Reiniciando, por favor espere pacientemente",
    ),
    "result_download_title": m18,
    "roaming": MessageLookupByLibrary.simpleMessage("autostopista"),
    "save": MessageLookupByLibrary.simpleMessage("Guardar"),
    "save_failed": MessageLookupByLibrary.simpleMessage("Fallo de salvamento"),
    "scan": MessageLookupByLibrary.simpleMessage("Escanear"),
    "scan_qr": MessageLookupByLibrary.simpleMessage(
      "Por favor, apunte al cuadro de escaneo en el código QR enviado por el centro comercial",
    ),
    "scan_success": MessageLookupByLibrary.simpleMessage("Escaneo tuvo éxito"),
    "search": MessageLookupByLibrary.simpleMessage("Búsqueda"),
    "search_nothing": MessageLookupByLibrary.simpleMessage(
      "Dispositivo no encontrado, por favor Revisa el dispositivo e intenta de nuevo.",
    ),
    "service_provider_name": MessageLookupByLibrary.simpleMessage("Proveedor"),
    "sim_card": MessageLookupByLibrary.simpleMessage("Tarjeta SIM"),
    "sim_insert_content": MessageLookupByLibrary.simpleMessage(
      "Se ha detectado la inserción de la tarjeta SIM en el teléfono",
    ),
    "sim_tips": MessageLookupByLibrary.simpleMessage("Aviso"),
    "sim_unplugged": MessageLookupByLibrary.simpleMessage(
      "¡Tarjeta SIM retirada!",
    ),
    "subject_code_text": MessageLookupByLibrary.simpleMessage(
      "Código de asunto",
    ),
    "tap_download": MessageLookupByLibrary.simpleMessage(
      "Haga clic en el botón Activar para iniciar la descarga del perfil.",
    ),
    "text_begin_connect": MessageLookupByLibrary.simpleMessage(
      "¡Empieza a conectar tu primer dispositivo!",
    ),
    "text_ble_not_open": MessageLookupByLibrary.simpleMessage(
      "El sistema reconoce que no ha encendido la función Bluetooth de su teléfono móvil",
    ),
    "text_connect_support": MessageLookupByLibrary.simpleMessage(
      "Tipo de conexión soportado: WLAN, Bluetooth",
    ),
    "text_connect_support_bluetooth": MessageLookupByLibrary.simpleMessage(
      "Tipo de conexión soportado: Bluetooth",
    ),
    "text_connect_support_none": MessageLookupByLibrary.simpleMessage(
      "No hay conexión soportada",
    ),
    "text_connect_support_wifi": MessageLookupByLibrary.simpleMessage(
      "Tipo de conexión soportado: WLAN",
    ),
    "text_device_use_explain": MessageLookupByLibrary.simpleMessage(
      "Instrucciones del dispositivo",
    ),
    "text_divider": MessageLookupByLibrary.simpleMessage(
      "----------  o  ----------",
    ),
    "text_not_find_device": MessageLookupByLibrary.simpleMessage(
      "No se encontraron dispositivos disponibles.",
    ),
    "text_search": MessageLookupByLibrary.simpleMessage("Búsqueda"),
    "text_select_connect": MessageLookupByLibrary.simpleMessage(
      "Seleccione Tipo de Conexión",
    ),
    "text_select_device": MessageLookupByLibrary.simpleMessage(
      "Seleccione el dispositivo",
    ),
    "text_select_device_type": MessageLookupByLibrary.simpleMessage(
      "Seleccione el modelo de dispositivo",
    ),
    "text_upgrade_content": MessageLookupByLibrary.simpleMessage(
      "La aplicación tiene una nueva versión, ahora ve a actualizar",
    ),
    "text_upgrade_title": MessageLookupByLibrary.simpleMessage("Actualizar"),
    "text_welcome": MessageLookupByLibrary.simpleMessage(
      "Bienvenido a eSIM Manager!",
    ),
    "text_wifi_not_open": MessageLookupByLibrary.simpleMessage(
      "El sistema reconoce que no ha habilitado la función WLAN de su teléfono móvil",
    ),
    "text_wifi_set": MessageLookupByLibrary.simpleMessage(
      "Haga clic en el botón Conectar dispositivo para ingresar la configuración del sistema",
    ),
    "text_wifi_use_wifi": MessageLookupByLibrary.simpleMessage(
      "Conectar dispositivos con WLAN",
    ),
    "text_wifi_use_wlan": MessageLookupByLibrary.simpleMessage(
      "Conectar dispositivos a través de WLAN",
    ),
    "tip_reboot": MessageLookupByLibrary.simpleMessage(
      "éxito, reinicie el dispositivo",
    ),
    "tips_1": MessageLookupByLibrary.simpleMessage(
      "1. Asegúrese de que la red esté disponible.",
    ),
    "tips_2": MessageLookupByLibrary.simpleMessage(
      "2. Si falla, por favor haga clic aquí",
    ),
    "tips_title": MessageLookupByLibrary.simpleMessage("Aviso:"),
    "title_connect_to_wifi": MessageLookupByLibrary.simpleMessage(
      "Conéctate a una red Wi‑Fi",
    ),
    "title_couldnt_activate_carrier": m19,
    "title_couldnt_activate_carrier_no_name":
        MessageLookupByLibrary.simpleMessage(
          "No se ha podido activar el servicio",
        ),
    "title_incorrect_qr_code": MessageLookupByLibrary.simpleMessage(
      "Código QR incorrecto",
    ),
    "title_network_not_activated": MessageLookupByLibrary.simpleMessage(
      "Red no activada",
    ),
    "title_no_connection": MessageLookupByLibrary.simpleMessage(
      "No hay conexión",
    ),
    "title_profile_already_downloaded": MessageLookupByLibrary.simpleMessage(
      "El perfil ya se ha descargado",
    ),
    "unavailable": MessageLookupByLibrary.simpleMessage("No disponible"),
    "universal": MessageLookupByLibrary.simpleMessage("El mecanismo General"),
    "user_consent_switch_no_name_title": MessageLookupByLibrary.simpleMessage(
      "¿Usar una SIM nueva?",
    ),
    "version": m20,
    "warning_ble_not_open_content": MessageLookupByLibrary.simpleMessage(
      "Por favor, vaya a la configuración del sistema para habilitar Bluetooth",
    ),
    "warning_ble_not_open_title": MessageLookupByLibrary.simpleMessage(
      "Bluetooth apagado",
    ),
    "warning_location_not_open_content": MessageLookupByLibrary.simpleMessage(
      "Por favor, vaya a la configuración del sistema para habilitar la función de posicionamiento",
    ),
    "warning_location_not_open_title": MessageLookupByLibrary.simpleMessage(
      "Posición no activada",
    ),
    "warning_skip_content": MessageLookupByLibrary.simpleMessage(
      "No puede usar el dispositivo correctamente hasta que lo agregue",
    ),
    "warning_skip_title": MessageLookupByLibrary.simpleMessage(
      "Añadir más tarde?",
    ),
    "wifi": MessageLookupByLibrary.simpleMessage("Wlan"),
    "wifiName": MessageLookupByLibrary.simpleMessage("Nombre de wi-fi"),
    "wifi_list_title": MessageLookupByLibrary.simpleMessage(
      "La conexión de datos actual no está disponible",
    ),
  };
}
