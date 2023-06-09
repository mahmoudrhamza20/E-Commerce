import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/utils/dio_helper.dart';
import '../../../../core/utils/end_points.dart';
import '../../../../core/utils/error_phone_auth_model.dart';
import '../models/user_model.dart';


class PhoneAuthRepo {
  Future<Either<String, UserModel>> phoneAuth(String phone) async {
    final response = await DioHelper.post(EndPoints.checkPhone, body: {
      'phone': '0$phone',
    }, headers: {
      'lang': 'en',
      'type': 'client',
    });
    try {
      if (response.statusCode == 200 && response.data['status'] == 'success') {
        log("Success CheckPhoneRepo");
        if (kDebugMode) {
          print(response);
        }
        return Right(UserModel.fromJson(jsonDecode(response.toString())));
      } else {
        return Left(
            ErrorPhoneAuthModel.fromJson(jsonDecode(response.toString()))
                .errors
                .phone[0]
                .toString());
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
