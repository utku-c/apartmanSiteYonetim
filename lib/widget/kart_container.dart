import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/enum/banka_enum.dart';
import 'package:apt_site_yonetim/models/kart_model.dart';
import 'package:flutter/material.dart';

class MyCartContainer extends StatelessWidget {
  const MyCartContainer({
    Key? key,
    required this.model,
  }) : super(key: key);
  final KartModel model;

  String isimGetir(BankaEnum bankaAdi) {
    switch (bankaAdi) {
      case BankaEnum.halkBankasi:
        return "Halk Bankası";
      case BankaEnum.isBankasi:
        return "İş Bankası";
      case BankaEnum.yapiKrediBankasi:
        return "Yapı Kredi Bankası";
      case BankaEnum.ziraatBankasi:
        return "Ziraat Bankası";
      default:
        return " -- ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/visa.png"),
          fit: BoxFit.fitWidth,
        ),
        border: Border.all(
          color: kMyPrimaryColor,
          width: 2.5,
        ),
        color: kMyPrimaryTextColor,
        borderRadius: const MyBorderRadius.allNormal(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                isimGetir(model.bankaAdi),
                style: kMyTextDecoration,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("CVV: ${model.ccv}", style: kMyTextDecoration),
                  Text(
                    "VALID THRU: ${model.sonTarih}",
                    style: kMyTextDecoration,
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    model.cardNumber,
                    style: kMyTextDecoration,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(model.adSoyad),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
