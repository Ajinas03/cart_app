import 'package:cart_app/screens/common/cart_button.dart';
import 'package:cart_app/screens/common/text_widget.dart';
import 'package:cart_app/screens/common/user_cart_button.dart';
import 'package:flutter/material.dart';

const gif =
    "https://imgs.search.brave.com/Tv7DUWvSBJWvQnskabhg5CAtFGRMgkovKubaeKJpmCQ/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9naWZk/Yi5jb20vaW1hZ2Vz/L2hpZ2gvaHVtb3Jv/dXMtYmlnLWJlbGx5/LWJhdG1hbi01bnJl/djZscmYwMmlubnBk/LmdpZg.gif";

class AuthUserScreen extends StatelessWidget {
  const AuthUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.white,
        leading: const SizedBox.shrink(),
        title: const TextWidget(
          text: "Products",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        actions: const [UserCartButton()],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  style: ListTileStyle.list,
                  contentPadding: const EdgeInsets.all(0),
                  horizontalTitleGap: 10,
                  leading: const Image(image: NetworkImage(gif)),
                  title: const TextWidget(
                    text: "data",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: const TextWidget(
                    text: "data",
                    fontSize: 16,
                  ),
                  trailing: CartButton(
                    isAdded: index.isEven,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
