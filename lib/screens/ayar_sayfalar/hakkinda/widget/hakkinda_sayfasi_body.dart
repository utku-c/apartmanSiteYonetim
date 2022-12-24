import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/widget/diriver_widget.dart';
import 'package:flutter/material.dart';

class HakkindaSayfasiBody extends StatefulWidget {
  const HakkindaSayfasiBody({Key? key}) : super(key: key);

  @override
  State<HakkindaSayfasiBody> createState() => _HakkindaSayfasiBodyState();
}

class _HakkindaSayfasiBodyState extends State<HakkindaSayfasiBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allNormal(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const MyDiriver(),
            Text(
              "Uygulama Hakkında",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Uygulama Geliştiricileri",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Yakında Gelecek Yenilikler",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Kullanım Koşulları",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Uygulama Güncellemeleri",
              style: textStyle(),
            ),
            const MyDiriver(),
          ],
        ),
      ),
    );
  }

  TextStyle textStyle() {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    );
  }
}
