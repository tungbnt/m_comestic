abstract class AppConstants {
  static const String AUTH_CLIENT_ID = 'f50128b2-95aa-4b5c-a3e7-c2d4db3eb869';
  static const String URL_PWA = 'https://id.pokefit.jp';
  static const String SOCKET_URL = "http://192.168.137.1:3000";
  static const String CHARSET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~';
  static const String SCHEME_TO_BACK = 'SCHEME_TO_BACK_MOBILE_FITNESS';
  static const String PATTERN_SPLIT_COOKIE = '; ';
  static const String SET_COOKIE = 'set-cookie';
  static const String REDIRECT_URI_PWA = '$URL_PWA/$SCHEME_TO_BACK';
  static const String APP_NAME_ID = "jp.poket";
  static const String ACCESS_TOKEN = "access_token";
  static const String STATUS_CHECKIN = "status_checkin";
  static const String USER_ID = "user_id";
  static const String VIDEOS_LEVEL = "video_level";

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
  // status door checkin
  static const int MAIN_DOOR = 1;
  static const int WEAR_DOOR = 2;
  static const int HYDRO_DOOR = 3;
  static const int ENTRY_DOOR = 1;
  static const int EXIT_DOOR = 2;

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
