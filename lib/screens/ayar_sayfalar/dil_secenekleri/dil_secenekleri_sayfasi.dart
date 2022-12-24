import 'package:flutter/material.dart';

import '../../../widget/app_bar_leading_widget.dart';
import 'widget/dil_secenekleri_sayfasi_body.dart';

class DilSecenekleriSayfasi extends StatelessWidget {
  const DilSecenekleriSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Dil Secenekleri"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          // AppBarCloseWidget(),
        ],
      ),
      body: const DilSecenekleriSayfasiBody(),
    );
  }
}
