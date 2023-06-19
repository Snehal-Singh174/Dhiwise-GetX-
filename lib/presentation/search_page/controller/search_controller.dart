import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/presentation/search_page/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchController extends GetxController {
  SearchController(this.searchModelObj);

  TextEditingController group1305Controller = TextEditingController();

  Rx<SearchModel> searchModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group1305Controller.dispose();
  }
}
