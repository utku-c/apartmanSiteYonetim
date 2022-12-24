import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constant/constant.dart';
import '../../../../core/manager/navigator_manager.dart';
import '../../../../widget/diriver_widget.dart';
import '../../../ayar_sayfalar/bildirimAyarlari/bildirim_sayfasi.dart';
import '../../../ayar_sayfalar/bize_ulasin/bize_ulas.dart';
import '../../../ayar_sayfalar/dil_secenekleri/dil_secenekleri_sayfasi.dart';
import '../../../ayar_sayfalar/hakkinda/hakkinda_sayfasi.dart';
import '../../../ayar_sayfalar/kart_ayarlari/kart_ayarlari.dart';
import '../../../ayar_sayfalar/sifre_degistirme/sifre_degistirme.dart';
import '../../../ayar_sayfalar/tema_ayarlari/tema_ayarlari.dart';
import '../../../ayar_sayfalar/yardim/yardim_sayfasi.dart';

class Ayarlar extends StatefulWidget {
  const Ayarlar({Key? key}) : super(key: key);
  static String routeName = "/ayarlar";

  @override
  State<Ayarlar> createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  final String _svgUrl = "assets/icons/home_notification.svg";
  final String _svgUrlKart = "assets/icons/wallet.svg";
  final String _svgUrlEmail = "assets/icons/email.svg";
  final String _svgUrlbildirim = "assets/icons/home_notification.svg";
  final String _svgUrlPassword = "assets/icons/password.svg";
  bool isChanced = false;
  NavigatorManager manager = NavigatorManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const PagePadding.allHigh(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              textFiledWidgets(),
              const SizedBox(height: 30),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Bütün Ayarlar",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const MyDiriver(),
              //*
              //* Bildirim Sayfası
              //*
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const BilDirimSayfasi(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrlbildirim,
                  text: "Bildirim Ayarları",
                ),
              ),
              const MyDiriver(),
              //*
              //* Şifre Değiştir
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const SifreDegistirmeSayfasi(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrlPassword,
                  text: "Şifre Değiştirme",
                ),
              ),
              const MyDiriver(),
              //*
              //* Kart Ayarları
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const KartAyarlari(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrlKart,
                  text: "Kart Ayarlarım",
                ),
              ),
              const MyDiriver(),
              //*
              //* Tema Sayfası
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const TemaSayfasi(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrl,
                  text: "Tema",
                ),
              ),
              const MyDiriver(),
              //*
              //* Yardım
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const YardimSayfasi(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrl,
                  text: "Yardım",
                ),
              ),
              const MyDiriver(),
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const DilSecenekleriSayfasi(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrl,
                  text: "Dil Seçenekleri",
                ),
              ),
              const MyDiriver(),
              //*
              //* Bize Ulaşın
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const BizeUlasSayfasi(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrlEmail,
                  text: "Bize Ulaşın",
                ),
              ),
              const MyDiriver(),
              //*
              //* Hakkında
              GestureDetector(
                onTap: () {
                  manager.navigatToWidget(
                    context,
                    const HakkindaSayfasi(),
                  );
                },
                child: MyProfileMenuItem(
                  svgUrl: _svgUrl,
                  text: "Hakkında",
                ),
              ),
              const MyDiriver(),
              //! Altta 100lük bir boşluk bırakıyoruz.
              //! BottomBar ın altında kalmasın diye
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField textFiledWidgets() {
    return TextFormField(
      textInputAction: TextInputAction.done,
      cursorColor: kMyPrimaryTextColor,
      style: const TextStyle(
        color: kMyPrimaryColor,
      ),
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            isChanced = true;
          });
        }
        if (value.isEmpty) {
          setState(() {
            isChanced = false;
          });
        }
      },
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Arama Yapın",
        labelText: "Ara",
        suffixIcon: isChanced == false
            ? null
            : IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
                color: kMyPrimaryColor,
              ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.search,
            color: kMyPrimaryColor,
          ),
          //   child: CustomSuffixIcon(
          //     size: 36,
          //     svgIcon: "assets/icons/password.svg",
          //   ),
          // ),
        ),
      ),
    );
  }
}

class MyProfileMenuItem extends StatelessWidget {
  final String svgUrl;
  final String text;
  const MyProfileMenuItem({
    Key? key,
    required this.svgUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 4),
      child: Row(
        children: [
          const SizedBox(width: 14),
          SizedBox(
            height: 36,
            width: 36,
            child: SvgPicture.asset(svgUrl),
          ),
          const SizedBox(width: 14),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
