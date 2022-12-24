import 'package:flutter/material.dart';

import '../../../../widget/app_bar_leading_widget.dart';
import 'widget/kart_ekle_body.dart';

class KartEkleSayfasi extends StatelessWidget {
  const KartEkleSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Kart Ekle"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: const KartEkleBody(),
    );
  }
}
