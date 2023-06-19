import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/presentation/chat_screen/models/chat_model.dart';
import 'package:flutter/material.dart';

class ChatController extends GetxController {
  TextEditingController messagestatusController = TextEditingController();

  Rx<ChatModel> chatModelObj = ChatModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    messagestatusController.dispose();
  }
}
