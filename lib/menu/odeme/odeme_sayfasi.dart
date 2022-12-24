import 'package:flutter/material.dart';
import '../../constant/constant.dart';
import '../../widget/app_bar_leading_widget.dart';
import 'odeme_tipi/odeme_tipi_secimi_sayfasi.dart';
import 'widgets/odeme_tipi_secimi.dart';

class OdemeSayfasi extends StatefulWidget {
  const OdemeSayfasi({Key? key}) : super(key: key);
  static String routeName = "/odeme_ekrani";

  @override
  State<OdemeSayfasi> createState() => _OdemeSayfasiState();
}

class _OdemeSayfasiState extends State<OdemeSayfasi> {
  final _urlList = [
    "assets/icons/menu_apartment.svg",
    "assets/icons/home_home.svg",
  ];
  final _baslikList = [
    "Aidat Ödemesi",
    "Kira Ödemesi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingWidget(),
        leadingWidth: 90,
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: Padding(
        padding: const PagePadding.allNormal(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Ödeme Tipini Seçiniz",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(2, (index) {
                  return GestureDetector(
                    child: OdemeTipiSecim(
                      baslik: _baslikList[index],
                      url: _urlList[index],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OdemeTipiSecimi(
                            gidilecekSayfaIndex: index,
                            odemeTuru: _baslikList[index],
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
