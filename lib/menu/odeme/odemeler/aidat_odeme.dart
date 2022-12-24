import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:flutter/material.dart';
import '../../../constant/default_button.dart';
import '../../../widget/app_bar_leading_widget.dart';
import '../success/odeme_basarili.dart';
import '../widgets/kart_ile_odeme.dart';

class AidatOdeme extends StatefulWidget {
  const AidatOdeme({
    Key? key,
    required this.odemeYontemi,
  }) : super(key: key);
  final String odemeYontemi;

  @override
  State<AidatOdeme> createState() => _AidatOdemeState();
}

class _AidatOdemeState extends State<AidatOdeme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: const AppBarLeadingWidget(),
        title: Text("Aidat Ödemesi ${widget.odemeYontemi}"),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: Padding(
        padding: const PagePadding.allNormal(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const KartIleOdeme(),
              const SizedBox(height: 20),
              DefaultButton(
                  text: "Ödeme Yap",
                  press: () {
                    Future.delayed(const Duration(seconds: 2))
                        .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const BasariliOdeme()),
                              ),
                            ));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
