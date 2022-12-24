import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constant/default_button.dart';
import '../../../screens/zoom_drawer/zoom_drawer_home.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allNormal(),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/icons/success.svg",
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 20),
          const Text(
            "Giriş Başarılı",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            child: DefaultButton(
              text: "Ana Sayfaya Git",
              press: () => Navigator.pushNamed(context, MyZoomDrawer.routeName),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
