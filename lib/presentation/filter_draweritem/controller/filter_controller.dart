import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/presentation/filter_draweritem/models/filter_model.dart';
import 'package:flutter/material.dart';

class FilterController extends GetxController {
  TextEditingController group848Controller = TextEditingController();

  TextEditingController group847Controller = TextEditingController();

  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group848Controller.dispose();
    group847Controller.dispose();
  }
}
