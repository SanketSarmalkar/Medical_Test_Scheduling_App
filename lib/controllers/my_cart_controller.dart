import 'package:get/get.dart';
import 'package:health_checkup_store/models/popular_lab_test_model.dart';

class MyCartController extends GetxController {
  final _myCartList = <PopularLabTestModel>[].obs;
  final _totalPrice = 0.0.obs;
  final _totalMRP = 0.0.obs;
  final _totalDiscount = 0.0.obs;

  List<PopularLabTestModel> get myCartList => _myCartList.toList();
  double get totalPrice => _totalPrice.value;
  double get totalMRP => _totalMRP.value;
  double get totalDiscount => _totalDiscount.value;

  void addToCart(PopularLabTestModel myCartModel) {
    _myCartList.add(myCartModel);
    _totalPrice.value += myCartModel.testDiscountedPrice;
    _totalMRP.value += myCartModel.testActualPrice;
    _totalDiscount.value +=
        myCartModel.testActualPrice - myCartModel.testDiscountedPrice;
  }

  void removeFromCart(PopularLabTestModel myCartModel) {
    _myCartList.remove(myCartModel);
    _totalPrice.value -= myCartModel.testDiscountedPrice;
    _totalMRP.value -= myCartModel.testActualPrice;
    _totalDiscount.value -=
        myCartModel.testActualPrice - myCartModel.testDiscountedPrice;
  }
}
