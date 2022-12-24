import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../widget/app_bar_leading_widget.dart';
import '../../../../widget/kart_container.dart';
import '../../provider/kart_provider.dart';

class KayitliKartlarim extends StatelessWidget {
  const KayitliKartlarim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myContext = Provider.of<KartProvider>(context, listen: false).tumKayit;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: const Text("Kayıtlı Kartlarım"),
        leading: const AppBarLeadingWidget(),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: Padding(
        padding: const PagePadding.allNormal(),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: myContext.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyCartContainer(model: myContext[index]),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
