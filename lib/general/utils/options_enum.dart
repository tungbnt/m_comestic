enum ACCOUNT_STATUS_ENUM {
  ACTIVE('active'),
  REGISTERING('registering'),
  CREATING('creating'),
  UNSUBSCRIBE('unsubscribe'),
  DELETING('deleting'),
  UNREGISTERED('unregistered'),
  OTHER('other'),
  BLOCKED('blocked');

  const ACCOUNT_STATUS_ENUM(this.name);
  final String name;

  @override
  String value() {
    return name;
  }
}

enum OPTIONS_STATUS_ENUM {
  PAST_DUE('past_due'),
  UNREGISTERED('unregistered'),
  NORMAL('normal'),
  FREE_TIME('free_time'),
  CREATING('creating'),
  UNSUBSCRIBED('unsubscribed');

  const OPTIONS_STATUS_ENUM(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}

enum OPTIONS_TYPE_ENUM {
  WATER('water'),
  TEBURA('tebura'),
  EXIT('exit'),
  ENTRY('entry');

  const OPTIONS_TYPE_ENUM(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}

enum MASTER_DATA_DTO_ENUM {
  MENU('menu'),
  HOME('home'),
  TODAY_TRANING('today-training');

  const MASTER_DATA_DTO_ENUM(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}

enum CONFIRM_CHANGE_CREDIT_CARD_POPUP_ENUM {
  CHANGE('change'),
  DELETE('delete');

  const CONFIRM_CHANGE_CREDIT_CARD_POPUP_ENUM(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}

enum NOTIFICATION_ITEM_TYPE_ENUM {
  GYM('gym'),
  APP('app'),
  USER('user');

  const NOTIFICATION_ITEM_TYPE_ENUM(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}

enum CHECKIN_TYPE_ENUM {
  ENTRY_NORMAL('entry_normal'),
  ENTRY_IN4HOURS('entry_in_4hours'),
  ENTRY_NO_CHARGE('entry_no_charge'),
  ENTRY_LAST_CHARGE('entry_last_charge'),
  ENTRY_WITH_COUPON('entry_with_coupon'),
  TEBURA_NORMAL('tebura_normal'),
  TEBURA_IN4HOURS('tebura_in_4hours'),
  TEBURA_NO_CHARGE('tebura_no_charge'),
  HYDRO_NO_ENTRY('hydro_no_entry'),
  HYDRO_NO_CHARGE('hydro_no_charge');

  const CHECKIN_TYPE_ENUM(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}

enum PLANS_TYPE_ENUM {
  USAGE('usage_fee'),
  FLAT('flat_rate');

  const PLANS_TYPE_ENUM(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}

enum DIALOG_MANAGER_HOME {
  CONFIRM_REGISTER('confirm_register'),
  CONFIRM_RE_REGISTER('confirm_re_register'),
  UPDATE_APP('update_app');

  const DIALOG_MANAGER_HOME(this.name);
  final String name;
  @override
  String value() {
    return name;
  }
}
