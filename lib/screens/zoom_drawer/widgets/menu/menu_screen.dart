import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constant/constant.dart';
import '../../../../menu/dilek_sikayet/dilek_sikayet_sayfasi.dart';
import '../../../../menu/kural/kural_sayfasi.dart';
import '../../../../menu/mesajlasma/mesajlasma_ekrani.dart';
import '../../../../menu/odeme/dekont/dekont_sayfasi.dart';
import '../../../../menu/odeme/odeme_sayfasi.dart';
import '../../../../widget/diriver_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  final String _svgUrl1 = "assets/icons/menu_apartment.svg";
  final String _svgUrl2 = "assets/icons/wallet.svg";
  final String _svgUrl3 = "assets/icons/home_userprofile.svg";
  final String _svgUrl4 = "assets/icons/menu_message.svg";
  final String _svgUrl5 = "assets/icons/home_logout.svg";
  final String _svgUrl6 = "assets/icons/menu_document.svg";
  final double _pstndCntnrHeightWidth = 24;
  final int miktar = 1;
  final int miktar2 = 31;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMyBackgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          DrawerHeader(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    minRadius: 24,
                    maxRadius: 32,
                    child: Container(),
                  ),
                  const SizedBox(height: 10),
                  const Text("Utku Bilgin"),
                ],
              ),
            ),
          ),
          const MyDiriver(),
          //? Kurallar
          MenuItemWidget(
            text: "Kurallar",
            svgUrl: _svgUrl1,
            function: () {
              Navigator.pushNamed(context, KuralEkrani.routeName);
            },
          ),
          const MyDiriver(),
          //? Ödemeler
          Stack(
            textDirection: TextDirection.rtl,
            children: [
              MenuItemWidget(
                text: "Ödemeler",
                svgUrl: _svgUrl2,
                function: () {
                  Navigator.pushNamed(context, OdemeSayfasi.routeName);
                },
              ),
              Positioned(
                right: 20,
                child: positionCntinr(index: miktar),
              )
            ],
          ),
          const MyDiriver(),
          //? Dilek - Şikayet
          MenuItemWidget(
            text: "Dilek/Şikayet",
            svgUrl: _svgUrl3,
            function: () {
              Navigator.pushNamed(context, DilekSikayetSayfasi.routeName);
            },
          ),
          const MyDiriver(),
          //? Dekontlar
          MenuItemWidget(
            text: "Dekontlar",
            svgUrl: _svgUrl6,
            function: () {
              Navigator.pushNamed(context, DekontSayfasi.routeName);
            },
          ),
          const MyDiriver(),
          //! Ayarlar
          Stack(
            textDirection: TextDirection.rtl,
            children: [
              MenuItemWidget(
                text: "Apartman \nMesaj Alanı",
                svgUrl: _svgUrl4,
                function: () {
                  Navigator.pushNamed(context, MesajlasmaEkrani.routeName);
                },
              ),
              Positioned(
                right: 16,
                child: positionCntinr(index: miktar2),
              )
            ],
          ),
          const MyDiriver(),
          const Spacer(),
          const MyDiriver(),
          //? Çıkış
          MenuItemWidget(
            text: "Çıkış",
            svgUrl: _svgUrl5,
            function: () {},
          ),
          const MyDiriver(),
          const SizedBox(height: 20),
        ],
      )),
    );
  }

  Container positionCntinr({required int index}) {
    return Container(
      height: _pstndCntnrHeightWidth,
      width: _pstndCntnrHeightWidth,
      padding: const EdgeInsets.only(top: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          _pstndCntnrHeightWidth / 2,
        ),
        color: Colors.red,
      ),
      child: Center(
        child: Text(
          index.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  final String svgUrl;
  final String text;
  final double _assetWith = 20;
  final Function function;

  const MenuItemWidget({
    Key? key,
    required this.svgUrl,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: InkWell(
        onTap: () {
          function();
        },
        child: Row(
          children: [
            SvgPicture.asset(
              svgUrl,
              width: _assetWith,
              height: 27,
            ),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(
                color: kMyPrimaryColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
