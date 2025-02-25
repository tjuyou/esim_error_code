///CreateDate: 2023/5/18 9:41
///Author: you
///Description:
library;

class EuiccCode {
  static const EXTRA_EMBEDDED_SUBSCRIPTION_OPERATION_CODE =
      'android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_OPERATION_CODE';
  static const EXTRA_EMBEDDED_SUBSCRIPTION_ERROR_CODE =
      'android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_ERROR_CODE';
  static const EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE =
      'android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_SUBJECT_CODE';
  static const EXTRA_EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE =
      'android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_SMDX_REASON_CODE';
}

class OperationCode {
  /// Internal system error.
  static const int OPERATION_SYSTEM = 1;

  /// SIM slot error. Failed to switch slot, failed to access the physical slot etc.
  static const int OPERATION_SIM_SLOT = 2;

  /// eUICC card error.
  static const int OPERATION_EUICC_CARD = 3;

  /// Generic switching profile error
  static const int OPERATION_SWITCH = 4;

  /// Download profile error.
  static const int OPERATION_DOWNLOAD = 5;

  /// Subscription's metadata error
  static const int OPERATION_METADATA = 6;

  /// eUICC returned an error defined in GSMA (SGP.22 v2.2) while running one of the ES10x functions.
  static const int OPERATION_EUICC_GSMA = 7;

  /// The exception of failing to execute an APDU command. It can be caused by an error
  /// happening on opening the basic or logical channel, or the response of the APDU command is
  /// not success (0x9000).
  static const int OPERATION_APDU = 8;

  /// SMDX(SMDP/SMDS) error
  static const int OPERATION_SMDX = 9;

  /// SubjectCode[5.2.6.1] and ReasonCode[5.2.6.2] error from GSMA (SGP.22 v2.2)
  /// When {@link #OPERATION_SMDX_SUBJECT_REASON_CODE} is used as the
  /// {#EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE}, the remaining three bytes of the integer
  /// result from {@link #EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE} will be used to stored the
  /// SubjectCode and ReasonCode from the GSMA spec and NOT ErrorCode.
  ///
  /// The encoding will follow the format of:
  /// 1. The first byte of the result will be 255(0xFF).
  /// 2. Remaining three bytes(24 bits) will be split into six sections, 4 bits in each section.
  /// 3. A SubjectCode/ReasonCode will take 12 bits each.
  /// 4. The maximum number can be represented per section is 15, as that is the maximum number
  /// allowed to be stored into 4 bits
  /// 5. Maximum supported nested category from GSMA is three layers. E.g 8.11.1.2 is not
  /// supported.
  ///
  /// E.g given SubjectCode(8.11.1) and ReasonCode(5.1)
  ///
  /// Base10:  0       10      8       11      1       0       5       1
  /// Base2:   0000    1010    1000    1011    0001    0000    0101    0001
  /// Base16:  0       A       8       B       1       0       5       1
  ///
  /// Thus the integer stored in {@link #EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE} is
  /// 0xA8B1051(176885841)
  ///
  static const int OPERATION_SMDX_SUBJECT_REASON_CODE = 10;

  /// HTTP error
  static const int OPERATION_HTTP = 11;

  static const int OPERATION_NOTIFICATION = 12;

  static const List<(String, int, String)> codeList = [
    ('OPERATION_SYSTEM', 1, 'Internal system error.'),
    (
      'OPERATION_SIM_SLOT',
      2,
      'SIM slot error. Failed to switch slot, failed to access the physical slot etc.'
    ),
    ('OPERATION_EUICC_CARD', 3, 'eUICC card error.'),
    ('OPERATION_SWITCH', 4, 'Generic switching profile error'),
    ('OPERATION_DOWNLOAD', 5, 'Download profile error.'),
    ('OPERATION_METADATA', 6, "Subscription's metadata error"),
    (
      'OPERATION_EUICC_GSMA',
      7,
      'eUICC returned an error defined in GSMA (SGP.22 v2.2) while running one of the ES10x functions.'
    ),
    (
      'OPERATION_APDU',
      8,
      'The exception of failing to execute an APDU command. It can be caused by an error happening on opening the basic or logical channel, or the response of the APDU command isnot success (0x9000).'
    ),
    ('OPERATION_SMDX', 9, 'SMDX(SMDP/SMDS) error'),
    (
      'OPERATION_SMDX_SUBJECT_REASON_CODE',
      10,
      'SubjectCode[5.2.6.1] and ReasonCode[5.2.6.2] error from GSMA (SGP.22 v2.2)'
    ),
    ('OPERATION_HTTP', 11, 'HTTP error'),
    ('OPERATION_NOTIFICATION', 12, 'Notification error'),
  ];
}

class ErrorCode {
  /// Operation such as downloading/switching to another profile failed due to device being
  /// carrier locked.
  static const int ERROR_CARRIER_LOCKED = 10000;

  /// The activation code(SGP.22 v2.2 section[4.1]) is invalid.
  static const int ERROR_INVALID_ACTIVATION_CODE = 10001;

  /// The confirmation code(SGP.22 v2.2 section[4.7]) is invalid.
  static const int ERROR_INVALID_CONFIRMATION_CODE = 10002;

  /// The profile's carrier is incompatible with the LPA.
  static const int ERROR_INCOMPATIBLE_CARRIER = 10003;

  /// There is no more space available on the eUICC for new profiles.
  static const int ERROR_EUICC_INSUFFICIENT_MEMORY = 10004;

  /// Timed out while waiting for an operation to complete. i.e restart, disable,
  /// switch reset etc.
  static const int ERROR_TIME_OUT = 10005;

  /// eUICC is missing or defective on the device.
  static const int ERROR_EUICC_MISSING = 10006;

  /// The eUICC card(hardware) version is incompatible with the software
  static const int ERROR_UNSUPPORTED_VERSION = 10007;

  /// No SIM card is available in the device.
  static const int ERROR_SIM_MISSING = 10008;

  /// Failure to load the profile onto the eUICC card. e.g
  /// 1. iccid of the profile already exists on the eUICC.
  /// 2. GSMA(.22 v2.2) Profile Install Result - installFailedDueToDataMismatch
  /// 3. operation was interrupted
  /// 4. SIMalliance error in PEStatus(SGP.22 v2.2 section 2.5.6.1)
  static const int ERROR_INSTALL_PROFILE = 10009;

  /// Failed to load profile onto eUICC due to Profile Policy Rules.
  static const int ERROR_DISALLOWED_BY_PPR = 10010;

  /// Address is missing e.g SMDS/SMDP address is missing.
  static const int ERROR_ADDRESS_MISSING = 10011;

  /// Certificate needed for authentication is not valid or missing. E.g  SMDP/SMDS authentication
  /// failed.
  static const int ERROR_CERTIFICATE_ERROR = 10012;

  /// No profiles available.
  static const int ERROR_NO_PROFILES_AVAILABLE = 10013;

  /// Failure to create a connection.
  static const int ERROR_CONNECTION_ERROR = 10014;

  /// Response format is invalid. e.g SMDP/SMDS response contains invalid json, header or/and ASN1.
  static const int ERROR_INVALID_RESPONSE = 10015;

  /// The operation is currently busy, try again later.
  static const int ERROR_OPERATION_BUSY = 10016;

  /// Failure due to target port is not supported.
  /// @see #switchToSubscription(int, int, PendingIntent)
  static const int ERROR_INVALID_PORT = 10017;

  static const List<(String, int, String)> codeInfoList = [
    (
      'ERROR_CARRIER_LOCKED',
      10000,
      'Operation such as downloading/switching to another profile failed due to device being carrier locked'
    ),
    (
      'ERROR_INVALID_ACTIVATION_CODE',
      10001,
      'The activation code(SGP.22 v2.2 section[4.1]) is invalid.'
    ),
    (
      'ERROR_INVALID_CONFIRMATION_CODE',
      10002,
      'The confirmation code(SGP.22 v2.2 section[4.7]) is invalid.'
    ),
    (
      'ERROR_INCOMPATIBLE_CARRIER',
      10003,
      "The profile's carrier is incompatible with the LPA."
    ),
    (
      'ERROR_EUICC_INSUFFICIENT_MEMORY',
      10004,
      'There is no more space available on the eUICC for new profiles.'
    ),
    (
      'ERROR_TIME_OUT',
      10005,
      'Timed out while waiting for an operation to complete. i.e restart, disable, switch reset etc.'
    ),
    (
      'ERROR_EUICC_MISSING',
      10006,
      'eUICC is missing or defective on the device.'
    ),
    (
      'ERROR_UNSUPPORTED_VERSION',
      10007,
      'The eUICC card(hardware) version is incompatible with the software'
    ),
    ('ERROR_SIM_MISSING', 10008, 'No SIM card is available in the device.'),
    (
      'ERROR_INSTALL_PROFILE',
      10009,
      '''
            Failure to load the profile onto the eUICC card. e.g
              1. iccid of the profile already exists on the eUICC.
              2. GSMA(.22 v2.2) Profile Install Result - installFailedDueToDataMismatch
              3. operation was interrupted
              4. SIMalliance error in PEStatus(SGP.22 v2.2 section 2.5.6.1)'''
    ),
    (
      'ERROR_DISALLOWED_BY_PPR',
      10010,
      'Failed to load profile onto eUICC due to Profile Policy Rules.'
    ),
    (
      'ERROR_ADDRESS_MISSING',
      10011,
      'Address is missing e.g SMDS/SMDP address is missing.'
    ),
    (
      'ERROR_CERTIFICATE_ERROR',
      10012,
      'Certificate needed for authentication is not valid or missing. E.g  SMDP/SMDS authentication failed.'
    ),
    ('ERROR_NO_PROFILES_AVAILABLE', 10013, 'No profiles available.'),
    ('ERROR_CONNECTION_ERROR', 10014, 'Failure to create a connection.'),
    (
      'ERROR_INVALID_RESPONSE',
      10015,
      'Response format is invalid. e.g SMDP/SMDS response contains invalid json, header or/and ASN1.'
    ),
    (
      'ERROR_OPERATION_BUSY',
      10016,
      'The operation is currently busy, try again later.'
    ),
    (
      'ERROR_INVALID_PORT',
      10017,
      'Failure due to target port is not supported.'
    ),
  ];
}

const subjectCodeMap = {
  '1': 'Generic',
  '1.1': 'Function Requester',
  '1.2': 'Function Provider',
  '1.3': 'Protocol',
  '1.3.1': 'Protocol Format',
  '1.3.2': 'Protocol Version',
  '1.6': 'Function',
  '8': 'eUICC Remote Provisioning',
  '8.1': 'eUICC',
  '8.1.1': 'EID',
  '8.1.2': 'EUM Certificate',
  '8.1.3': 'eUICC Certificate',
  '8.2': 'Profile',
  '8.2.1': 'Profile ICCID',
  '8.2.5': 'Profile Type',
  '8.2.6': 'Matching ID',
  '8.2.7': 'Confirmation Code',
  '8.2.8': 'PPR',
  '8.2.9': 'Profile Metadata',
  '8.2.10': 'Bound Profile Package',
  '8.2.11': 'Managing SM-DP+',
  '8.2.12': 'Profile Owner',
  '8.2.13': 'Enterprise',
  '8.2.14': 'LPA Proxy',
  '8.8': 'SM-DP+',
  '8.8.1': 'SM-DP+ Address',
  '8.8.2': 'Security configuration',
  '8.8.3': 'Specification Version Number (SVN)',
  '8.8.4': 'SM-DP+ Certificate',
  '8.8.5': 'Download order',
  '8.8.6': 'RPM Order',
  '8.9': 'SM-DS',
  '8.9.1': 'SM-DS Address',
  '8.9.2': 'Security configuration',
  '8.9.3': 'Specification Version Number (SVN)',
  '8.9.4': 'SM-DS Certificate',
  '8.9.5': 'Event Record',
  '8.9.6': 'ECID',
  '8.9.7': 'Push Service',
  '8.10': 'RSP Operation',
  '8.10.1': 'TransactionId',
  '8.10.2': 'RPM Script',
  '8.10.3': 'Device Change',
  '8.10.4': 'Event Checking',
  '8.10.5': 'Device Change Session ID',
  '8.10.6': 'Push Service Registration',
  '8.11': 'eSIM CA',
  '8.11.1': 'Public Key (PK)',
  '8.12': 'LPA',
};

const reasonCodeMap = {
  '1': 'Access Error',
  '1.1': 'Unknown (Identification or Authentication)',
  '1.2': 'Not Allowed (Authorisation)',
  '2': 'Format Error',
  '2.1': 'Invalid',
  '2.2': 'Mandatory Element Missing',
  '2.3': 'Conditional Element Missing',
  '3': 'Conditions of Use Not Satisfied',
  '3.1': 'Unsupported',
  '3.3': 'Already in Use (Uniqueness)',
  '3.5': 'Invalid transition',
  '3.7': 'Unavailable',
  '3.8': 'Refused',
  '3.9': 'Unknown',
  '3.10': 'Invalid Association',
  '3.11': 'Value has Changed',
  '3.12': 'Invalid Match',
  '4': 'Processing Error',
  '4.2': 'Execution Error',
  '4.3': 'Stopped on Warning',
  '4.8': 'Insufficient Memory',
  '4.10': 'Time to Live Expired',
  '5': 'Transport Error',
  '5.1': 'Inaccessible',
  '6': 'Security Error',
  '6.1': 'Verification Failed',
  '6.3': 'Expired',
  '6.4': 'Maximum number of attempts exceeded',
};

const specMap = [
  ('8.1.1', '2.2', 'Indicates that the EID is missing in the context of this order (SM-DS address provided or MatchingID value has zero-length).'),
  ('8.1.1', '3.9', 'Indicates that the eUICC, identified by this EID is unknown to the SM-DP+.'),
  ('8.1.1', '3.10', 'Indicates that a different EID is already associated with this ICCID. (Indicates that the RPM Package is associated with different EID)'),
  ('8.2.1', '1.2', 'Indicates that the function caller is not allowed to perform this function on the target Profile.'),
  ('8.2.1', '2.2', 'Indicates that the ICCID or the finalProfileStatusIndicator is missing in the context of cancelling a Profile download order.'),
  ('8.2.1', '2.3', 'Indicates that the ICCID is missing in the context of the RPM Command.'),
  ('8.2.1', '3.3', 'Indicates that the Profile identified by the provided ICCID is not available. (The profile, identified by this ICCID, is already downloaded.)'),
  ('8.2.1', '3.5', 'Indicates that the target Profile cannot be released.'),
  ('8.2.1', '3.9', 'Indicates that the Profile, identified by this ICCID is unknown to the SM-DP+. (Indicates that the installed Profile, identified by this ICCID, is unknown to the Service Provider.)'),
  ('8.2.1', '3.10', 'Indicates that a different EID is associated with this ICCID.'),
  ('8.2.5', '3.9', 'Indicates that the Profile Type identified by this Profile Type is unknown to the SM-DP+.'),
  ('8.2.5', '1.2', 'Indicates that the function caller is not allowed to perform this function on the Profile Type.'),
  ('8.2.5', '3.7', 'No more Profile available for the requested Profile Type.'),
  ('8.2.5', '3.8', 'Indicates that the Profile Type identified by this Profile Type is not aligned with the Profile Type of Profile identified by the ICCID.'),
  ('8.2.6', '2.1', 'Matching ID provided by the Operator is not valid.'),
  ('8.2.6', '2.2', 'Indicates that the MatchingID is missing in the context of this order.'),
  ('8.2.6', '3.3', 'Conflicting MatchingID value. (Matching ID provided by the Operator is already in use at the SM-DP+.)'),
  ('8.2.6', '3.10', 'Indicates that a different MatchingID is associated with this ICCID or RPM order'),
  ('8.2.9', '2.1', 'Indicates that the provided Profile Metadata is not valid.'),
  ('8.2.9', '2.3', 'Indicates that no Metadata object is provided in the context of the RPM Command.'),
  ('8.2.12', '3.10', 'The Operator provided incorrect Profile Owner OID.'),
  ('8.9', '4.2', 'The cascade SM-DS registration has failed. SM-DS has raised an error.'),
  ('8.9', '5.1', 'Indicates that the smdsAddress is invalid or not reachable.'),
  ('8.10.2', '2.2', 'Indicates that the RPM Script is missing in the context of this order.'),
  ('8.10.3', '1.2', 'Indicates that the installed Profile is not eligible for Device Change.'),
  ('8.12', '3.3', 'The RPM Package is already downloaded.'),

  ('8.8.5', '3.8', 'CancelSession reason - endUserRejection(0)'),
  ('8.2.8', '1.2', 'CancelSession reason - pprNotAllowed(3)'),
  ('8.2.9', '3.11', 'CancelSession reason - metadataMismatch(4)'),
  ('8.2.10', '4.2', 'CancelSession reason - loadBppExecutionError(5)'),
  ('8.2.13', '3.1', 'CancelSession reason - enterpriseProfilesNotSupported(17)'),
  ('8.2.13', '1.2', 'CancelSession reason - enterpriseRulesNotAllowed(18)'),
  ('8.2.13', '3.8', 'CancelSession reason - enterpriseProfileNotAllowed(19) or enterpriseRulesError(21) or enterpriseProfilesOnly(22)'),
  ('8.2.13', '3.12', 'CancelSession reason - enterpriseOidMismatch(20)'),
  ('8.2.14', '3.1', 'CancelSession reason - lprNotSupported(23)'),
  ('8.8.6', '3.1', 'CancelSession reason - lprNotSupported(23)'),
  ('8.8.6', '3.8', 'CancelSession reason - lprNetworkDataNotAllowed(24) or rpmDisabled(27)'),
  ('8.2.9', '3.8', 'CancelSession reason - emptyProfileOrSpName(25)'),
  ('8.8.6', '2.1', 'CancelSession reason - invalidRpmPackage(28)'),
  ('8.8.6', '4.2', 'CancelSession reason - loadRpmPackageError(29)'),
  ('8.10.3', '4.3', 'CancelSession reason - operationAbandoned(30'),
  ('8', '4.2', 'CancelSession reason - undefinedReason(127)'),

  ('8.8.5', '6.4', 'Maximum number of attempts of Profile Download has been exceeded'),
  ('8.2.7', '6.4', 'Maximum number of incorrect attempts of Confirmation Code verification has been exceeded'),
  ('8.10.2.7', '4.2', 'Execution of at least one RPM command within an RPM package has failed'),
];

