import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constant/constant.dart';
import '../../../widget/app_bar_leading_widget.dart';

class DekontSayfasi extends StatefulWidget {
  const DekontSayfasi({Key? key}) : super(key: key);
  static String routeName = "/dekontlarım";

  @override
  State<DekontSayfasi> createState() => _DekontSayfasiState();
}

class _DekontSayfasiState extends State<DekontSayfasi> {
  final String _downloadDekont = "assets/icons/dekont_download.svg";
  final String _shareDekont = "assets/icons/dekont_share.svg";
  final String _anaBaslik = "Ödenmiş Dekontlarım";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: const AppBarLeadingWidget(),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: Padding(
        padding: const PagePadding.allNormal(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _anaBaslik,
              style: const TextStyle(
                fontSize: kMyFontSizeHigh - 2,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kMyPrimaryTextColor.withOpacity(0.8),
                        borderRadius: const MyBorderRadius.allHigh(),
                      ),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 2,
                                  ),
                                  child: Column(
                                    children: [
                                      yilOdenmeDurumuText(),
                                      const SizedBox(height: 10),
                                      ayOdenenUcretText(),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: dekontIndirIcon(),
                              ),
                              Expanded(
                                flex: 1,
                                child: dekontPaylasIcon(),
                              ),
                            ],
                          ),
                          Divider(
                            endIndent: 20,
                            indent: 20,
                            thickness: 2,
                            color: kMyPrimaryColor.withOpacity(0.5),
                          ),
                          faturaOdenmeTarihiText()
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row yilOdenmeDurumuText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${DateTime.now().year}",
          style: const TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: kMyFontSizelow,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: MyBorderRadius.circularLow(),
            color: Colors.green,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 12,
          ),
          child: const Text(
            "Ödendi",
          ),
        )
      ],
    );
  }

  Row ayOdenenUcretText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          ayGoster(DateTime.now().month),
          // "${DateTime.now()}",
          style: const TextStyle(
            fontSize: kMyFontSizeNormal,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 12,
          ),
          child: const Text(
            "₺240.20",
            style: TextStyle(
              fontSize: kMyFontSizeNormal,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Column dekontIndirIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              //!
              // ignore: avoid_print
              print("İndiriliyor");
            },
            child: SvgPicture.asset(
              _downloadDekont,
              width: 36,
              height: 36,
            ),
          ),
        ),
      ],
    );
  }

  Column dekontPaylasIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              //!
              // ignore: avoid_print
              print("Paylaş");
            },
            child: SvgPicture.asset(
              _shareDekont,
              width: 32,
              height: 32,
            ),
          ),
        ),
      ],
    );
  }

  Row faturaOdenmeTarihiText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Faturanız ${DateTime.now().day} ${ayGoster(DateTime.now().month)} ${DateTime.now().year} tarihinde ödendi",
          style: const TextStyle(
            fontSize: kMyFontSizeSoLow - 1,
          ),
        )
      ],
    );
  }

  String ayGoster(int index) {
    String ay = "";
    switch (index) {
      case 1:
        ay = "Ocak";
        break;
      case 2:
        ay = "Şubat";
        break;
      case 3:
        ay = "Mart";
        break;
      case 4:
        ay = "Nisan";
        break;
      case 5:
        ay = "Mayıs";
        break;
      case 6:
        ay = "Haziran";
        break;
      case 7:
        ay = "Temmuz";
        break;
      case 8:
        ay = "Ağustos";
        break;
      case 9:
        ay = "Eylül";
        break;
      case 10:
        ay = "Ekim";
        break;
      case 11:
        ay = "Kasım";
        break;
      case 12:
        ay = "Aralık";
        break;

      default:
    }
    return ay;
  }
}
