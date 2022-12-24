import 'package:flutter/material.dart';

import '../../../widget/app_bar_leading_widget.dart';
import 'widget/bize_ulas_body.dart';

class BizeUlasSayfasi extends StatelessWidget {
  const BizeUlasSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Bize Ulaşın"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          // AppBarCloseWidget(),
        ],
      ),
      body: const BizeUlasBody(),
    );
  }
}
