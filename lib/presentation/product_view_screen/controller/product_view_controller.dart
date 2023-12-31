import 'package:snehal_s_application64/core/app_export.dart';
import 'package:snehal_s_application64/presentation/product_view_screen/models/product_view_model.dart';

class ProductViewController extends GetxController {
  Rx<ProductViewModel> productViewModelObj = ProductViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
