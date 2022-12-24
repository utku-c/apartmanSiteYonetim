import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/sabit_listeler/kural.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/duyuru_model.dart';
import 'widgets/duyuru_detay.dart';

class DuyuruSayfasi extends StatefulWidget {
  const DuyuruSayfasi({Key? key}) : super(key: key);
  static String routeName = "/duyuru_sayfasi";

  @override
  State<DuyuruSayfasi> createState() => _DuyuruSayfasiState();
}

class _DuyuruSayfasiState extends State<DuyuruSayfasi> {
  final List<DuyuruModel> _duyuruListe = demoDuyuruListe;
  final String _duyuruBackgraundUrl = "assets/images/backgraund_duyuru.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Duyurular",
              style: kMyTextDecoration,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _duyuruListe.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const PagePadding.allLow(),
                    child: Container(
                      decoration: kMyDefaultCardDecoration,
                      padding: const PagePadding.allLow(),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: SvgPicture.asset(
                                  "assets/icons/home_notification.svg",
                                  width: 46,
                                  height: 46,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _duyuruListe[index].duyuruBaslik,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: double.infinity,
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius: MyBorderRadius.circularLow(),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  _duyuruBackgraundUrl,
                                ),
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      _duyuruListe[index].duyuruAciklama,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: ((context) => DuyuruDetay(
                                                  model: _duyuruListe[index],
                                                )),
                                          ),
                                        );
                                      },
                                      child: const Text(
                                        "Bütün Detaylar",
                                        style: TextStyle(
                                          fontSize: 18,
                                          decoration: TextDecoration.underline,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
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
}
