import 'package:flutter_bloc/flutter_bloc.dart';


part 'init_app_state.dart';


class InitAppCubit extends Cubit<InitAppState> {
  InitAppCubit() : super(InitAppInitial());
}
