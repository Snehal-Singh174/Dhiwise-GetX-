import 'controller/sign_up_sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/widgets/custom_button.dart';
import 'package:snehal_s_application64/data/models/register/post_register_req.dart';
import 'package:snehal_s_application64/data/models/register/post_register_resp.dart';

class SignUpSignInScreen extends GetWidget<SignUpSignInController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 50, right: 16, bottom: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgUnsplashw7b3edub2i299x299,
                          height: getSize(299),
                          width: getSize(299),
                          radius: BorderRadius.circular(getHorizontalSize(149)),
                          margin: getMargin(top: 23)),
                      Container(
                          width: getHorizontalSize(186),
                          margin: getMargin(top: 81),
                          child: Text("msg_discover_your_s".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsMedium25)),
                      Container(
                          width: getHorizontalSize(304),
                          margin: getMargin(left: 20, top: 13, right: 19),
                          child: Text("msg_it_is_a_long_es".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular15)),
                      Padding(
                          padding: getPadding(top: 48),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(52),
                                    width: getHorizontalSize(164),
                                    text: "lbl_register".tr,
                                    onTap: () {
                                      signIn();
                                    }),
                                CustomButton(
                                    height: getVerticalSize(52),
                                    width: getHorizontalSize(163),
                                    text: "lbl_sign_in".tr,
                                    variant: ButtonVariant.FillGray200,
                                    fontStyle: ButtonFontStyle
                                        .PoppinsMedium16Black900_1,
                                    onTap: () {
                                      onTapSignin();
                                    })
                              ]))
                    ]))));
  }

  Future<void> signIn() async {
    PostRegisterReq postRegisterReq = PostRegisterReq();
    try {
      await controller.callCreateRegister(
        postRegisterReq.toJson(),
      );
      _onSignInSuccess();
    } on PostRegisterResp {
      _onSignInError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onSignInSuccess() {}
  void _onSignInError() {}
  onTapSignin() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
