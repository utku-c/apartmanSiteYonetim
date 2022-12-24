import 'package:flutter/material.dart';

import '../../../widget/app_bar_leading_widget.dart';
import 'widget/bildirim_sayfasi_body.dart';

class BilDirimSayfasi extends StatelessWidget {
  const BilDirimSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Bildirim Ayarları"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          // AppBarCloseWidget(),
        ],
      ),
      body: const BildirimSayfasiBody(),
    );
  }
}
