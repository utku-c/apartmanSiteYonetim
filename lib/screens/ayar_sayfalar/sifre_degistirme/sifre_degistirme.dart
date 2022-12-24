import 'package:flutter/material.dart';

import '../../../widget/app_bar_leading_widget.dart';
import 'widget/sifre_degistirme_body.dart';

class SifreDegistirmeSayfasi extends StatelessWidget {
  const SifreDegistirmeSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Şifre Değiştir"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          // AppBarCloseWidget(),
        ],
      ),
      body: const SifreDegistirmeBody(),
    );
  }
}
