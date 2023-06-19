import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/presentation/sign_up_sign_in_screen/models/sign_up_sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:snehal_s_application64/data/models/register/post_register_resp.dart';
import 'package:snehal_s_application64/data/apiClient/api_client.dart';

class SignUpSignInController extends GetxController {
  Rx<SignUpSignInModel> signUpSignInModelObj = SignUpSignInModel().obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callCreateRegister(Map req) async {
    try {
      postRegisterResp = await Get.find<ApiClient>().createRegister(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateRegisterSuccess();
    } on PostRegisterResp catch (e) {
      postRegisterResp = e;
      rethrow;
    }
  }

  void _handleCreateRegisterSuccess() {}
}
