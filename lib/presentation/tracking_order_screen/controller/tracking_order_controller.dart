import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/presentation/tracking_order_screen/models/tracking_order_model.dart';

class TrackingOrderController extends GetxController {
  Rx<TrackingOrderModel> trackingOrderModelObj = TrackingOrderModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
