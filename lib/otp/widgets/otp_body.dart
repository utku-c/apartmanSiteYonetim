import 'package:flutter/material.dart';
import '../../../constant/constant.dart';
import 'otp_form.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                "Kullanıcı Doğrulama",
                style: TextStyle(
                  fontSize: kMyFontSizeNormal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "262 62 2 62 626 numaralı telefonu mesaj yolladık",
              ),
              const SizedBox(height: 20),
              buildTimer(),
              const SizedBox(height: 20),
              const OtpForm(),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) {
            int val = 0;
            val = value.round();
            return Flexible(
              child: Text(
                overflow: TextOverflow.fade,
                maxLines: 1,
                "00:$val",
                style: const TextStyle(
                  color: kMyPrimaryColor,
                ),
              ),
            );
          },
          // builder: (context, value, child) {
          //   int val = value as int;

          //   return Text("$val");
          // },
          onEnd: () {},
        )
      ],
    );
  }
}
