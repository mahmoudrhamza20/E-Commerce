// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "login": "تسجيل الدخول",
  "password": "كلمة المرور",
  "emailOrPhone": "البريد الإلكتروني / رقم الهاتف",
  "dontHaveAnAccount": "ليس لديك حساب؟",
  "resetPassword": "إعادة تعيين كلمة المرور",
  "signUp": "إشتراك",
  "loginwithsocialoffilltheFormToContinue": "تسجيل الدخول مع وسائل التواصل الاجتماعي أو ملء النموذج للمتابعة.",
  "letsGetStarted": "هيا بنا نبدأ!",
  "noInternetConnectivity": "لا يوجد اتصال بالإنترنت",
  "thereisnointernetconnection": "لا يوجد اتصال بالإنترنت",
  "reload": "إعادة تحميل",
  "required": "مطلوب"
};
static const Map<String,dynamic> en = {
  "login": "Log In",
  "password": "Password",
  "emailOrPhone": "Email/Phone",
  "dontHaveAnAccount": "Don’t have an account?",
  "resetPassword": "Reset Password",
  "signUp": "Sign Up",
  "loginwithsocialoffilltheFormToContinue": "Login with social or fill the form to continue.",
  "letsGetStarted": "Let \\'s Get Started!",
  "noInternetConnectivity": "No internet connectivity",
  "thereisnointernetconnection": "There is no internet connection",
  "reload": "Reload",
  "required": "Required"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
