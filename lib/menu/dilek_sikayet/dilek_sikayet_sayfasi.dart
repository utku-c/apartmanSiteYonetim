import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant/constant.dart';
import '../../constant/default_button.dart';
import '../../widget/app_bar_leading_widget.dart';

class DilekSikayetSayfasi extends StatefulWidget {
  const DilekSikayetSayfasi({Key? key}) : super(key: key);
  static String routeName = "/dilek_sikayet_sayfasi";

  @override
  State<DilekSikayetSayfasi> createState() => _DilekSikayetSayfasiState();
}

class _DilekSikayetSayfasiState extends State<DilekSikayetSayfasi> {
  final soru1 = TextEditingController();
  String gelenNot = "";
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Dilek - Şikayet"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: Padding(
        padding: const PagePadding.allNormal(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "İletmek istediğiniz notu yazınız",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                onTap: () {
                  setState(() {
                    isActive = true;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    gelenNot = value;
                  });
                },
                maxLines: 10,
                textInputAction: TextInputAction.done,
                controller: soru1,
                decoration: InputDecoration(
                  labelText: "Notunuz",
                  hintText: "Notunuzu Yazınız",
                  labelStyle: TextStyle(
                    color: isActive == false
                        ? kMyPrimaryColor
                        : kMyPrimaryTextColor,
                  ),
                  helperText: soru1.value.text.isNotEmpty == false
                      ? "Boş Bırakılamaz"
                      : "",
                  helperStyle: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Resim Ekleyin",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: kMyPrimaryTextColor,
                      borderRadius: MyBorderRadius.allNormal(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/menu_add_image3.svg",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: kMyPrimaryTextColor,
                      borderRadius: MyBorderRadius.allNormal(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/menu_add_image3.svg",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: kMyPrimaryTextColor,
                      borderRadius: MyBorderRadius.allNormal(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/icons/menu_add_image3.svg",
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              DefaultButton(
                text: "Kaydet",
                press: isActive == false
                    ? null
                    : () {
                        if (soru1.value.text.isNotEmpty) {
                        } else {}
                      },
              )
            ],
          ),
        ),
      ),
    );
  }
}
