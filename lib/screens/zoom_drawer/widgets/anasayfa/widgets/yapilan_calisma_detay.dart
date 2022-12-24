import 'package:flutter/material.dart';
import '../../../../../constant/constant.dart';
import '../../../../../models/yapilan_calisma_model.dart';
import '../../../../../widget/app_bar_leading_widget.dart';

class YapilanCalismaDetay extends StatelessWidget {
  const YapilanCalismaDetay({
    Key? key,
    required this.model,
  }) : super(key: key);
  final YapilanCalismaModel model;

  @override
  Widget build(BuildContext context) {
    double ekranGenislik = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeadingWidget(),
        leadingWidth: 90,
        title: const Text("İş Detay"),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: Padding(
        padding: const PagePadding.allNormal(),
        child: Container(
          width: ekranGenislik,
          decoration: kMyDefaultCardDecoration,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                            style: _textStyle(),
                          ),
                        ],
                      ),
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
                      SingleChildScrollView(
                        child: SizedBox(
                          height: 180,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: model.resimUrl.length,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                  model.resimUrl[index],
                                  fit: BoxFit.cover,
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      // ListView.builder(
                      //   itemBuilder: (context, index) {
                      //     return Image.asset(
                      //       "assets/images/backgraund_duyuru.jpg",
                      //       fit: BoxFit.cover,
                      //       width: 200,
                      //       height: 200,
                      //     );
                      //   },
                      // ),
                      const SizedBox(height: 8),
                      Text(
                        model.aciklama,
                      ),
                      const SizedBox(height: 20),
                      dividerMethod(),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "İşlem Ücreti: ${model.islemTutari}",
                            style: kMyTextDecoration,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      dividerMethod(),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "İşi Yapan",
                                style: TextStyle(
                                  fontSize: kMyFontSizelow,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            model.calisan?.adSoyad ??
                                "Yönetici ile İletişime Geçin",
                          ),
                          const SizedBox(height: 4),
                          Text(
                            model.calisan?.telefonNo ??
                                "Yönetici ile İletişime Geçin",
                          ),
                          const SizedBox(height: 4),
                          Text(
                            model.calisan?.meslek ??
                                "Yönetici ile İletişime Geçin",
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      dividerMethod(),
                      const SizedBox(height: 20),
                      dividerMethod(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Divider dividerMethod() {
    return const Divider(
      thickness: 2,
      color: kMyBackgroundColor,
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
