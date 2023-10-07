import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcomestic/domain/service/navigator/route_service.dart';
import 'package:mcomestic/modules/login/screens/login_screen.dart';


part 'init_app_state.dart';


class InitAppCubit extends Cubit<InitAppState> {
  InitAppCubit() : super(InitAppInitial());


}
