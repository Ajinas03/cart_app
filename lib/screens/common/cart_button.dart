import 'package:cart_app/repository/product_repo.dart';
import 'package:cart_app/screens/common/text_widget.dart';
import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  final bool isAdded;
  const CartButton({super.key, required this.isAdded});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 90,
      child: isAdded
          ? SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                      child: IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove,
                            size: 16,
                          ))),
                  const Expanded(
                      child: TextWidget(
                    text: "0",
                    fontSize: 20,
                    textAlign: TextAlign.center,
                  )),
                  Flexible(
                      child: IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 16,
                          ))),
                ],
              ),
            )
          : FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10)),
              elevation: 0,
              onPressed: () async {
                final prod = await ProductRepo.getUnauthProducts();

                print("${prod?.data?.length} ++++++++++");
              },
              label: const TextWidget(text: "Add")),
    );
  }
}
