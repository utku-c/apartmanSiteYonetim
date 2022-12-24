import 'package:flutter/material.dart';

import 'widgets/login_success_body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text(
          "",
        ),
      ),
      body: const LoginSuccessBody(),
    );
  }
}
