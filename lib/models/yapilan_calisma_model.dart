class YapilanCalismaModel {
  int id;
  String baslik;
  String aciklama;
  List<String> resimUrl;
  DateTime yapilmaTarihi;
  String? islemTutari;
  IsiYapanKisi? calisan;

  YapilanCalismaModel({
    required this.id,
    required this.baslik,
    required this.aciklama,
    required this.resimUrl,
    required this.yapilmaTarihi,
    this.islemTutari,
    this.calisan,
  });
}

// İşi yapan Kişi Bilgileri
class IsiYapanKisi {
  int id;
  String adSoyad;
  String telefonNo;
  String? meslek;
  IsiYapanKisi({
    required this.id,
    required this.adSoyad,
    required this.telefonNo,
    this.meslek,
  });
}
