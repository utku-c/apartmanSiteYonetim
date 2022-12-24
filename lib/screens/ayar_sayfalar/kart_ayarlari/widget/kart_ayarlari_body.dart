import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/core/manager/navigator_manager.dart';
import 'package:apt_site_yonetim/screens/ayar_sayfalar/kart_ayarlari/kart_ekle/kart_ekle.dart';
import 'package:apt_site_yonetim/widget/my_container.dart';
import 'package:flutter/material.dart';
import '../kart_sil/kart_sil.dart';
import '../kayitli_kartlarim/kayitli_kartlarim.dart';

class KartAyarlariBody extends StatefulWidget {
  const KartAyarlariBody({Key? key}) : super(key: key);

  @override
  State<KartAyarlariBody> createState() => _KartAyarlariBodyState();
}

class _KartAyarlariBodyState extends State<KartAyarlariBody> {
  final NavigatorManager _manager = NavigatorManager();
  final _baslikList = [
    "Kart Ekle",
    "Kart Sil",
    "Kayıtlı Kartlarım",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allNormal(),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(_baslikList.length, (index) {
                return GestureDetector(
                  child: CustomContainer(
                    baslik: _baslikList[index],
                    url: "assets/icons/wallet.svg",
                  ),
                  onTap: () {
                    switch (index) {
                      case 0:
                        _manager.navigatToWidget(
                          context,
                          const KartEkleSayfasi(),
                        );
                        break;
                      case 1:
                        _manager.navigatToWidget(
                          context,
                          const KartSilSayfasi(),
                        );
                        break;
                      case 2:
                        _manager.navigatToWidget(
                          context,
                          const KayitliKartlarim(),
                        );
                        break;
                      default:
                    }
                  },
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
