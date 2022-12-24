import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../constant/default_button.dart';
import '../../../screens/zoom_drawer/zoom_drawer_home.dart';

class BasariliOdeme extends StatelessWidget {
  const BasariliOdeme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const PagePadding.allHigh(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: kMyPrimaryTextColor.withOpacity(.6),
                  width: 200,
                  height: 200,
                  // child: SvgPicture.asset(
                  //   "assets/icons/error.svg",
                  // ),
                  child: Lottie.asset(
                    "assets/json/login_success.json",
                    repeat: false,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Başarılı Ödeme",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                DefaultButton(
                  text: "Ana Sayfaya Dön",
                  press: () {
                    Navigator.popAndPushNamed(context, MyZoomDrawer.routeName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
