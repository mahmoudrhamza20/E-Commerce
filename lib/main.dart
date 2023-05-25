import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/features/cart/presentaion/view_model/counter_cubit/counter_cubit.dart';
import 'package:e_commerce/features/drawer/presentation/view_model/app_bar_drawar_cubit/app_bar_drawer_cubit.dart';
import 'package:e_commerce/translations/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/cache_helper.dart';
import 'core/utils/internet_connection_error.dart';
import 'core/utils/magic_router.dart';
import 'core/utils/network_info.dart';
import 'features/main_screen/presentation/views_models/bottom_bar_cubit.dart';
import 'features/splash/presentations/views/splash_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
     supportedLocales: const [Locale('en'), Locale('ar')],
      assetLoader: const CodegenLoader(),
      path:
      'assets/translations',
      // <-- change the path of the translation files
      fallbackLocale: const Locale('en'),
    child: const ECommerce()));
  Bloc.observer = AppBlocObserver();
  await CacheHelper.init();
}

class ECommerce extends StatefulWidget {
  const ECommerce({Key? key}) : super(key: key);

  @override
  State<ECommerce> createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
    Map _source = {ConnectivityResult.none: false};

  @override
  void initState() {
    
  NetworkConnectivity.instance.initialise();
    NetworkConnectivity.instance.myStream.listen((source) {
      _source = source;
      print('source $_source');
      switch (_source.keys.toList()[0]) {
        case ConnectivityResult.mobile:
          _source.values.toList()[0]
              ? log('Network Connection')
              : MagicRouter.navigateTo(const InternetConnectionError());
          break;
        case ConnectivityResult.wifi:
          _source.values.toList()[0]
              ? log('Network Connection')
              : MagicRouter.navigateTo(const InternetConnectionError());
          break;
        case ConnectivityResult.none:
        default:
          MagicRouter.navigateTo(const InternetConnectionError());
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: const Size(375, 812),
       minTextAdapt: true,
       splitScreenMode: true,
      builder: ( context,  child) {  return
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
          BlocProvider(
            create: (context) => AppBarDrawerCubit(),
          ),
        ],
        child: MaterialApp(
            home: const SplashView(),
            navigatorKey: navigatorKey,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: ThemeData( 
              fontFamily: kCairo,
                scaffoldBackgroundColor: kBackground,
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    selectedItemColor: const Color(0xff50555C),
                    unselectedItemColor: const Color(0xff50555C).withOpacity(0.7),
                    elevation: 0,
                    type: BottomNavigationBarType.fixed
                )
            )
      ),
      );
  });
  }
}

