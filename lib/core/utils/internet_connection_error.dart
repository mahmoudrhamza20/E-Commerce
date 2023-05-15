import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../translations/locale_keys.g.dart';
import '../widgets/custom_snackbar.dart';
import 'magic_router.dart';

class InternetConnectionError extends StatelessWidget {
  const InternetConnectionError({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Lottie.asset('assets/json/connectiontointernet.json')),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Text(
              LocaleKeys.thereisnointernetconnection.tr(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            height: 55.h,
            width: MediaQuery.of(context).size.width * 0.35,
            margin:  EdgeInsets.symmetric(vertical: 15.h),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  foregroundColor: Theme.of(context).primaryColor,
                  elevation: 500,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(
                LocaleKeys.reload.tr(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700),
              ),
              onPressed: () async {
                var connectivityResult =
                    await (Connectivity().checkConnectivity());
                if (connectivityResult != ConnectivityResult.mobile &&
                    connectivityResult != ConnectivityResult.wifi) {
                  showSnackBar(
                    LocaleKeys.noInternetConnectivity.tr(),
                  );
                } else {
                  MagicRouter.pop();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}