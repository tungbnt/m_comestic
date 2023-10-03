

class AppSession {


  static bool? _checkVersion;
  bool? get checkVersion => _checkVersion;
  void saveCheckVersion(bool check) {
    _checkVersion = check;
  }



  static String? _deviceQrId;
  String? get deviceQrId => _deviceQrId;
  void saveDeviceQrId(String? device) {
    _deviceQrId = device;
  }



  static String? _couponReRegister;
  String? get couponReRegister => _couponReRegister;
  void saveCouponReRegister(String data) {
    _couponReRegister = data;
  }

  static bool? _checkNotiDetails;
  bool? get checkNotiDetails => _checkNotiDetails;
  void saveNotiDetails(bool check) {
    _checkNotiDetails = check;
  }



  static String? _uuidQrCode;
  String get uuidQrCode => _uuidQrCode!;
  void saveUuidQrCode(String uuidQrCode) {
    _uuidQrCode = uuidQrCode;
  }


  static String? _coupon;
  String get coupon => _coupon!;
  void saveCodeCoupon(String code) {
    _coupon = code;
  }


  static String? _lineUrlSupportGymId;
  String? get lineUrlSupportGymId => _lineUrlSupportGymId;
  void saveLineUrlSupportGymId(String? lineUrlSupportGymId) {
    _lineUrlSupportGymId = lineUrlSupportGymId;
  }
}
