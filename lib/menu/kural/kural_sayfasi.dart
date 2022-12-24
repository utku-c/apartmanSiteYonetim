import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/sabit_listeler/kural.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/app_bar_leading_widget.dart';

class KuralEkrani extends StatefulWidget {
  const KuralEkrani({Key? key}) : super(key: key);
  static String routeName = "/kural_ekran";

  @override
  State<KuralEkrani> createState() => _KuralEkraniState();
}

class _KuralEkraniState extends State<KuralEkrani> {
  late final List<String> _kuralListe;
  @override
  void initState() {
    super.initState();
    _kuralListe = kuralListe;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Kurallar"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: ListView.builder(
        itemCount: _kuralListe.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const PagePadding.allLow(),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: MyBorderRadius.circularNormal(),
                color: kMyPrimaryTextColor,
              ),
              child: Padding(
                padding: const PagePadding.allNormal(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: SvgPicture.asset(
                        "assets/icons/kural_exclamation.svg",
                        width: 36,
                        height: 36,
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          _kuralListe[index],
                          style: const TextStyle(
                            height: 1.5,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
