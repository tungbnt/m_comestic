part of 'init_app_cubit.dart';

abstract class InitAppState {
  InitAppState({required InitAppState? state}) ;



  void copy(InitAppState? state) {

  }
}

class InitAppInitial extends InitAppState {
  InitAppInitial() : super(state: null);
}

class InitAppLoadingToken extends InitAppState {
  InitAppLoadingToken({required super.state});
}

class InitAppChangeLanguageState extends InitAppState {
  InitAppChangeLanguageState({required super.state});
}

class InitOnBoarding extends InitAppState {
  InitOnBoarding({required super.state});
}

abstract class InitHomeDataState extends InitAppState {
  InitHomeDataState({required super.state});
}

class InitMasterDataSuccess extends InitHomeDataState {
  InitMasterDataSuccess({required super.state});
}

class InitProfileDataSuccess extends InitHomeDataState {
  InitProfileDataSuccess({required super.state});
}

class InitChangeDataGymIdAfterCheckin extends InitHomeDataState {
  InitChangeDataGymIdAfterCheckin({required super.state});
}

class InitDataClear extends InitAppState {
  InitDataClear({required super.state});
}

class InitAppSaveTimeInactive extends InitAppState {
  InitAppSaveTimeInactive({required super.state});
}
