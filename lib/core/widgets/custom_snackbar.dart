
import 'dart:async';

import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../utils/magic_router.dart';

showSnackBar(String title,
    {bool popPage = false, duration = 3, Color color = kPrimaryColor,EdgeInsetsGeometry? margin}) {
  ScaffoldMessenger.of(MagicRouter.currentContext!).hideCurrentSnackBar();
  ScaffoldMessenger.of(MagicRouter.currentContext!).showSnackBar(
    SnackBar(
      margin: margin,
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      content: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      action: SnackBarAction(
        label: '',
        onPressed: () {},
      ),
      duration: Duration(seconds: duration),
    ),
  );
  if (popPage) Timer(const Duration(seconds: 5), () => MagicRouter.pop());
}
