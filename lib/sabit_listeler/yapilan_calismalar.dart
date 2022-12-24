import '../models/yapilan_calisma_model.dart';

List<YapilanCalismaModel> calismaListe = [
  YapilanCalismaModel(
    id: 1,
    aciklama: "yay yayayy yayyayya ahsahsjb ajdbashdb",
    baslik: "Elektrik İşleri",
    yapilmaTarihi: DateTime.now(),
    islemTutari: "223tl",
    resimUrl: [
      "assets/images/backgraund_duyuru.jpg",
    ],
    calisan: IsiYapanKisi(
      id: 1,
      adSoyad: 'Mehmet Güleryüz',
      telefonNo: '539 399 2001',
      meslek: "Elektrik",
    ),
  ),
  YapilanCalismaModel(
    id: 2,
    aciklama:
        "yay yayayy yayyayya ahsahsjb ajdbashdb yayayy yayyayya ahsahsjb ajdbashdb yayayy yayyayya ahsahsjb ajdbashdb yayayy yayyayya ahsahsjb ajdbashdb",
    baslik: "Aparman Temizliği ds dnesfon esf",
    yapilmaTarihi: DateTime.now(),
    resimUrl: [
      "assets/images/backgraund_duyuru.jpg",
      "assets/images/backgraund_duyuru.jpg",
      "assets/images/backgraund_duyuru.jpg",
    ],
    islemTutari: "648tl",
    calisan: IsiYapanKisi(
      id: 1,
      adSoyad: 'Ali Güleryüz',
      telefonNo: '539 399 2001',
      meslek: "Marangoz",
    ),
  ),
];
