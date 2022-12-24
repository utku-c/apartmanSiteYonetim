import 'package:flutter/material.dart';

import '../widget/app_bar_leading_widget.dart';
import 'widgets/otp_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: const AppBarLeadingWidget(),
        centerTitle: true,
      ),
      body: const OtpBody(),
    );
  }
}
