import 'package:flutter/material.dart';

import '../../../../widget/app_bar_leading_widget.dart';

class KartSilSayfasi extends StatefulWidget {
  const KartSilSayfasi({Key? key}) : super(key: key);

  @override
  State<KartSilSayfasi> createState() => _KartDuzenleSayfasiState();
}

class _KartDuzenleSayfasiState extends State<KartSilSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Kart Sil"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
    );
  }
}
