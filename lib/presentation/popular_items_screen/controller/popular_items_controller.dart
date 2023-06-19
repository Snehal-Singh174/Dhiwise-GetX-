import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/presentation/popular_items_screen/models/popular_items_model.dart';
import 'package:flutter/material.dart';
import 'package:snehal_s_application64/data/models/list/post_list_resp.dart';
import 'package:snehal_s_application64/data/apiClient/api_client.dart';
import 'package:snehal_s_application64/data/models/list/post_list_req.dart';

class PopularItemsController extends GetxController {
  Rx<PopularItemsModel> popularItemsModelObj = PopularItemsModel().obs;

  PostListResp postListResp = PostListResp();

  @override
  Future<void> onReady() async {
    super.onReady();
    PostListReq postListReq = PostListReq();
    try {
      await this.callCreateList(
        postListReq.toJson(),
      );
      _onCreateListSuccess();
    } on PostListResp {
      _onCreateListError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callCreateList(Map req) async {
    try {
      postListResp = await Get.find<ApiClient>().createList(
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNjUyZjdjMTI0ODc2MDAxNTVjYzY0ZCIsImVtYWlsIjoiUHJpc2NpbGxhX01vaHJAeWFob28uY29tIiwiaWF0IjoxNjM0MDIyNDM4LCJleHAiOjE2MzQ2MjI0Mzh9.YYcCfVOnPA7ZFc-cV90a33_Hycddj-Xtt5kI6IRukxQ',
        },
        requestData: req,
      );
      _handleCreateListSuccess();
    } on PostListResp catch (e) {
      postListResp = e;
      rethrow;
    }
  }

  void _handleCreateListSuccess() {}
  void _onCreateListSuccess() {}
  void _onCreateListError() {}
}
