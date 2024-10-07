import 'package:cart_app/screens/auth_user_screen.dart';
import 'package:cart_app/screens/unauth_user_screen.dart';
import 'package:cart_app/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = getSize(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
              child: FloatingActionButton.extended(
                  onPressed: () {
                    pushScreen(context, const AuthUserScreen());
                  },
                  label: const Text("LogIn")),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: FloatingActionButton.extended(
                  onPressed: () {
                    pushScreen(context, const UnauthUserScreen());
                  },
                  label: const Text("Continue without LogIn")),
            )
          ],
        ),
      ),
    );
  }
}
