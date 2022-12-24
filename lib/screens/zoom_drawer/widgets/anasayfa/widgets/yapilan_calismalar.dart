import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/screens/zoom_drawer/widgets/anasayfa/widgets/yapilan_calisma_detay.dart';
import 'package:flutter/material.dart';

import '../../../../../models/yapilan_calisma_model.dart';
import '../../../../../sabit_listeler/yapilan_calismalar.dart';
import 'calisma_card.dart';

class YapilanCalismalar extends StatefulWidget {
  const YapilanCalismalar({Key? key}) : super(key: key);
  static String routeName = "/yapilan_calismalar";

  @override
  State<YapilanCalismalar> createState() => _YapilanCalismalarState();
}

class _YapilanCalismalarState extends State<YapilanCalismalar> {
  final List<YapilanCalismaModel> _yapilanCalisma = calismaListe;
  final String _yapilanCalismalar = "Yapılan Çalışmalar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  _yapilanCalismalar,
                  style: kMyTextDecoration,
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _yapilanCalisma.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      child: YapianCalismaCard(
                        model: _yapilanCalisma[index],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => YapilanCalismaDetay(
                                  model: _yapilanCalisma[index],
                                )),
                          ),
                        );
                      },
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
