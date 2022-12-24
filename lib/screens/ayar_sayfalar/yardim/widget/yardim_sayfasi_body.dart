import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:flutter/material.dart';

import '../../../../widget/diriver_widget.dart';

class YardimSayfasiBody extends StatefulWidget {
  const YardimSayfasiBody({Key? key}) : super(key: key);

  @override
  State<YardimSayfasiBody> createState() => _YardimSayfasiBodyState();
}

class _YardimSayfasiBodyState extends State<YardimSayfasiBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const PagePadding.allNormal(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const MyDiriver(),
            Text(
              "Nasıl Kullanmalıyız",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Sorun Bildir",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Yardım Merkezi",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Gizlilik ve Güvenlik",
              style: textStyle(),
            ),
            const MyDiriver(),
            const MyDiriver(),
            Text(
              "Destek - Şikayet",
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
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
