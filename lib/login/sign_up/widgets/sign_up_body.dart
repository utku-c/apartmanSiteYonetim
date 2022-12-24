import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:flutter/material.dart';

import 'sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const SignUpForm(),
              const SizedBox(height: 30),
              GestureDetector(
                child: const Text(
                  "Kullanım Koşulları",
                  style: TextStyle(
                    fontSize: kMyFontSizelow,
                    decoration: TextDecoration.underline,
                    decorationThickness: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
