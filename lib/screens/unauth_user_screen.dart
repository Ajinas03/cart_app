import 'package:cart_app/screens/auth_user_screen.dart';
import 'package:cart_app/screens/common/text_widget.dart';
import 'package:flutter/material.dart';

class UnauthUserScreen extends StatelessWidget {
  const UnauthUserScreen({super.key});

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
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(), borderRadius: BorderRadius.circular(6)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  style: ListTileStyle.list,
                  contentPadding: EdgeInsets.all(0),
                  horizontalTitleGap: 10,
                  leading: Image(image: NetworkImage(gif)),
                  title: TextWidget(
                    text: "data",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: TextWidget(
                    text: "data",
                    fontSize: 16,
                  ),
                  // trailing: CartButton(
                  //   isAdded: false,
                  // ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
