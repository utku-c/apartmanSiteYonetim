import 'package:flutter/material.dart';

import '../../../constant/constant.dart';
import '../../sign_up/sign_up_screen.dart';
import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: const [
                Text(
                  "Hosgeldiniz",
                  style: TextStyle(
                    color: kMyPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                SignForm(),
                SizedBox(height: 20),
                YoneticiGiris(),
                SizedBox(height: 20),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class YoneticiGiris extends StatelessWidget {
  const YoneticiGiris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          //onTap: (() => Navigator.pushNamed(context, SignUpScreen.routeName)),
          child: const Text(
            "Yönetici Girişi",
            style: TextStyle(
              fontSize: kMyFontSizelow,
              color: kMyPrimaryColor,
              decoration: TextDecoration.underline,
              decorationThickness: 3,
            ),
          ),
        )
      ],
    );
  }
}

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Hesabın yok mu? ",
          style: TextStyle(fontSize: kMyFontSizelow),
        ),
        GestureDetector(
          onTap: (() => Navigator.pushNamed(context, SignUpScreen.routeName)),
          child: const Text(
            "Kayıt Ol ",
            style: TextStyle(
              fontSize: kMyFontSizelow,
              color: kMyPrimaryColor,
              decoration: TextDecoration.underline,
              decorationThickness: 3,
            ),
          ),
        )
      ],
    );
  }
}
