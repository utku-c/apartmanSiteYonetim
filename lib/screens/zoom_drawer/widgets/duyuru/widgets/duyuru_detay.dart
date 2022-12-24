import 'package:apt_site_yonetim/models/duyuru_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant/constant.dart';
import '../../../../../widget/app_bar_leading_widget.dart';

class DuyuruDetay extends StatelessWidget {
  const DuyuruDetay({
    Key? key,
    required this.model,
  }) : super(key: key);
  final DuyuruModel model;
  final String duyuruBackgraundUrl = "assets/images/backgraund_duyuru.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        title: Text(model.id.toString()),
        leading: const AppBarLeadingWidget(),
      ),
      body: Padding(
        padding: const PagePadding.allLow(),
        child: Container(
          decoration: kMyDefaultCardDecoration,
          padding: const PagePadding.allLow(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      "assets/icons/home_notification.svg",
                      width: 46,
                      height: 46,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    flex: 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.duyuruBaslik,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 210,
                decoration: BoxDecoration(
                  borderRadius: MyBorderRadius.circularLow(),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      duyuruBackgraundUrl,
                    ),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "${DateTime.now().day}.${DateTime.now().month}.${DateTime.now().year}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          model.duyuruAciklama,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
