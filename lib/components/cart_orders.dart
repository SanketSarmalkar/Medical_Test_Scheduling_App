import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_checkup_store/components/cart_order_item.dart';
import 'package:health_checkup_store/controllers/my_cart_controller.dart';

class CartOrders extends StatefulWidget {
  const CartOrders({super.key});

  @override
  State<CartOrders> createState() => CartOrdersState();
}

class CartOrdersState extends State<CartOrders> {
  MyCartController myCartController = Get.put(MyCartController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 400,
        child: (myCartController.myCartList.isNotEmpty)
            ? ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: myCartController.myCartList.length,
                itemBuilder: (context, item) {
                  return CartOrderItem(
                    test: myCartController.myCartList[item],
                  );
                })
            : const Center(
                child: Text("No items in cart"),
              ),
      ),
    );
  }
}
