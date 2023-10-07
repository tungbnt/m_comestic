abstract class AppConstants {

  static const String ACCESS_TOKEN = "access_token";


  static const String bearerToken =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOjY1LCJuYW1lIjoiSm9obiIsImVtYWlsIjoiYnZiQGcuZyJ9.b0UDWRHiu9498nCH79pLAp_BCzdnAQGlJKKynIsvAfo";

  static String socketId = "";
  static int refreshInterval = 10;
  static int increaseInInterval = 10;

  static double currentLat = 35.6812579;
  static double currentLng = 139.7630586;

  static String WATER_TYPE = 'water';
  static String TEBURA_TYPE = 'tebura';

  static int MIN_USER_AGE = 18;
  static int MAX_USER_AGE = 65;


  static int limitOfListDataLengthForEachRequest = 10;
  static int nextPageThreshold = 2;

  /// Đã tiếp nhận
  static const int orderInWaitingForPaymentStatusId = 2;

  /// Đã tiếp nhận
  static const int orderReceivedStatusId = 7;

  /// Đang xử lý
  static const int orderProcessingStatusId = 99999;

  /// Đã xác nhận
  static const int orderConfirmStatusId = 30;

  /// Đang vận chuyển
  static const int orderDeliveringStatusId = 47;

  /// Hoàn thành
  static const int orderCompletedStatusId = 999;

  /// Đã hủy
  static const int orderCanceledStatusId = -1;

  /// Lịch hẹn thử đồ
  static const int tryOnStatusId = 1;

  static const String NUMBER_ONE = '1';
  //modules/option-fee-registed/screens/option-fee-page.dart
  // Check's it review?
  static const String NOT_REVIEW = "not_review";
  //Check is Router Login or register?
  static const String CHECK_ROUTE_AUTH = 'login'; //Check is Router Login or register?
  static const String GYM_ID_CHECKIN = 'gym_id_checkin';
  static const String QR_CODE_BACKUP = 'qr_code_backup';
  static const String APP_BADGER = 'app_badger';
  static const String COUPON = 'coupon';

}
