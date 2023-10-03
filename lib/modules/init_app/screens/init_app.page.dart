import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcomestic/general/app_strings/app_strings.dart';
import 'package:mcomestic/general/constants/app_locale.dart';
import 'package:mcomestic/modules/app_manager.dart';
import 'package:mcomestic/modules/init_app/blocs/init_app_cubit.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mcomestic/modules/splash/screens/splash_page.dart';

// import 'package:flutter_app_badger/flutter_app_badger.dart';


class PokeFitApp extends StatelessWidget {
  const PokeFitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

      ],
      child: const InitPage(),
    );
  }
}

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_InitPageState>()?.restartApp();
  }

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> with WidgetsBindingObserver {
  Key key = UniqueKey();
  InitAppCubit? cubit;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      cubit = context.read<InitAppCubit>();

    });
  }

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
    // cubit?.initEvent();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('state: $state');
    switch (state) {
      case AppLifecycleState.resumed:
        context.read<InitAppCubit>();
        break;
      case AppLifecycleState.paused:
        context.read<InitAppCubit>();
        break;
      default:
        break;
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var initAppCubit = context.read<InitAppCubit>();
    return KeyedSubtree(
      key: key,
      child: WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: GestureDetector(
          onTap: () {
            WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
          },
          child: BlocBuilder<InitAppCubit, InitAppState>(
            bloc: initAppCubit,
            buildWhen: (prev, current) {
              return true;
            },
            builder: (context, state) {
              return MaterialApp(
                navigatorKey: AppManager.globalKeyRootMaterial,
                title: 'Poket Fitness',
                theme: ThemeData(fontFamily: 'HevelticaNeue'),
                locale:  AppLocaleEnum.JP.getLocale(),
                // comment because login webview don't support language, it will open in the future
                // locale:  AppLocaleEnum.JP.getLocale(),
                supportedLocales: AppLocaleEnum.values.map((e) => e.getLocale()),
                localizationsDelegates: [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                home: BlocListener<InitAppCubit, InitAppState>(
                  bloc: initAppCubit,
                  listener: (context, state) {
                    if (state is InitOnBoarding) {
                      // RouteService.routeOnboarding();
                    } else if (state is InitHomeDataState) {
                      // RouteService.routeLandingPage(isSubscribed: state.user?.isSubscribed ?? false);
                    }
                  },
                  child: const SplashPage(),
                ),
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: child!,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
