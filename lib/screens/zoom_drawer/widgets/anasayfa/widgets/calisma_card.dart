import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/models/yapilan_calisma_model.dart';
import 'package:flutter/material.dart';

class YapianCalismaCard extends StatelessWidget {
  const YapianCalismaCard({
    Key? key,
    required this.model,
  }) : super(key: key);
  final YapilanCalismaModel model;
  final String _butunDetayText = "Bütün Detaylar";

  @override
  Widget build(BuildContext context) {
    // ! Ekran Genislik VE Yükseklik Değerlerini Atama
    //double ekranYukseklik = MediaQuery.of(context).size.height;
    double ekranGenislik = MediaQuery.of(context).size.width;

    return Container(
      width: ekranGenislik,
      decoration: kMyDefaultCardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tarihTextMethod(),
                    tlTextMethod(),
                  ],
                ),
                const SizedBox(height: 8),
                const SizedBox(height: 8),
                Column(
                  children: [
                    Text(
                      model.baslik,
                      style: kMyTextDecoration,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  model.aciklama,
                ),
                const SizedBox(height: 20),
                Text(
                  _butunDetayText,
                  style: _textStyle(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Text tarihTextMethod() {
    return Text(
      "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
      style: _textStyle(),
    );
  }

  Container tlTextMethod() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 3,
      ),
      decoration: const BoxDecoration(
        borderRadius: MyBorderRadius.allNormal(),
        color: kMyPrimaryColor,
      ),
      child: Text(
        model.islemTutari.toString(),
        style: const TextStyle(
          color: kMyPrimaryTextColor,
          fontSize: kMyFontSizeNormal,
        ),
      ),
    );
  }

  TextStyle _textStyle() {
    return const TextStyle(
      fontSize: kMyFontSizelow,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight.bold,
      decorationThickness: 2,
    );
  }
}
