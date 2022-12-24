import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import 'widgets/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMyBackgroundColor,
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text(
          "Giriş Yap",
        ),
      ),
      body: const SignInBody(),
    );
  }
}
