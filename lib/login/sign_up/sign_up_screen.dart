import 'package:flutter/material.dart';

import '../../widget/app_bar_leading_widget.dart';
import 'widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kayıt Ol",
        ),
        leadingWidth: 90,
        leading: const AppBarLeadingWidget(),
      ),
      body: const SignUpBody(),
    );
  }
}
