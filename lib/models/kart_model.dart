import 'package:apt_site_yonetim/enum/banka_enum.dart';

class KartModel {
  int id;
  String cardNumber;
  String adSoyad;
  String ccv;
  String sonTarih;
  BankaEnum bankaAdi;
  KartModel({
    required this.id,
    required this.cardNumber,
    required this.adSoyad,
    required this.ccv,
    required this.sonTarih,
    required this.bankaAdi,
  });
}
