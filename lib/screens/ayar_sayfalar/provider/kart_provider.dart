import 'package:flutter/material.dart';
import '../../../enum/banka_enum.dart';
import '../../../models/kart_model.dart';

class KartProvider with ChangeNotifier {
  final List<KartModel> _kayitList = [
    KartModel(
      id: 1,
      cardNumber: "4545 4545 4545 4545",
      adSoyad: "Utku Bilgin",
      ccv: "666",
      sonTarih: "16/54",
      bankaAdi: BankaEnum.halkBankasi,
    )
  ];

  List<KartModel> get tumKayit => _kayitList;

  addList(KartModel model) {
    _kayitList.insert(0, model);
    notifyListeners();
  }
}
