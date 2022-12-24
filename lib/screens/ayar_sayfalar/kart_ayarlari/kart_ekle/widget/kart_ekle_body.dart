import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:apt_site_yonetim/enum/banka_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../../../../../constant/default_button.dart';
import '../../../../../menu/odeme/widgets/kart_ile_odeme.dart';
import '../../../../../models/kart_model.dart';
import '../../../provider/kart_provider.dart';
import '../../component/card_utilis.dart';

class KartEkleBody extends StatefulWidget {
  const KartEkleBody({Key? key}) : super(key: key);

  @override
  State<KartEkleBody> createState() => _KartEkleBodyState();
}

class _KartEkleBodyState extends State<KartEkleBody>
    with SingleTickerProviderStateMixin {
  TextEditingController cardNumberController = TextEditingController();
  CardType cardType = CardType.Invalid;
  late AnimationController _controller;
  final String lottiUrl = "assets/json/accept.json";
  void getCardTypeFrmNum() {
    if (cardNumberController.text.length <= 6) {
      String cardNum = CardUtils.getCleanedNumber(cardNumberController.text);
      CardType type = CardUtils.getCardTypeFrmNumber(cardNum);
      if (type != cardType) {
        setState(() {
          cardType = type;
        });
      }
    }
  }

  KartModel model = KartModel(
    id: 0,
    cardNumber: "cardNumber",
    adSoyad: "adSoyad",
    ccv: "ccv",
    sonTarih: "sonTarih",
    bankaAdi: BankaEnum.halkBankasi,
  );
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    cardNumberController.addListener(() {
      getCardTypeFrmNum();
    });
    _controller = AnimationController(
      vsync: this,
    );
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        _controller.reset();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var myContext = Provider.of<KartProvider>(context, listen: false);
    return Padding(
      padding: const PagePadding.allNormal(),
      child: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: cardNumberController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(16),
                  CardNumberInputFormatter(),
                ],
                onChanged: (value) {
                  model.cardNumber = value;
                },
                onSaved: (newValue) {},
                decoration: InputDecoration(
                  hintText: "Card Numarası",
                  labelText: "Kart Numarası",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      "assets/icons/wallet.svg",
                      height: 16,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CardUtils.getCardIcon(cardType),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  model.adSoyad = value;
                },
                decoration: InputDecoration(
                  hintText: "Kullanıcı Ad-Soyad",
                  labelText: "Ad - Soyad",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      "assets/icons/home_userprofile.svg",
                      height: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3),
                      ],
                      onChanged: (value) {
                        model.ccv = value;
                      },
                      decoration: InputDecoration(
                        hintText: "CVV",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/card_cvv.png",
                            width: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                        CardMonthInputFormatter(),
                      ],
                      onChanged: (value) {
                        model.sonTarih = value;
                      },
                      decoration: InputDecoration(
                        hintText: "MM/YY",
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            "assets/images/calender.png",
                            width: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DefaultButton(
                  text: "Kart Ekle",
                  press: () {
                    myContext.addList(model);
                    customShowDialog(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> customShowDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: ((context) => Dialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(32.0),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: kMyPrimaryTextColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(32.0),
                ),
              ),
              width: 150,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 220,
                    height: 220,
                    padding: const EdgeInsets.only(right: 20),
                    child: Lottie.asset(
                      lottiUrl,
                      repeat: false,
                      controller: _controller,
                      onLoaded: (composition) {
                        _controller.duration = composition.duration;
                        _controller.forward();
                      },
                    ),
                  ),
                  const Text(
                    "Kaydedildi",
                    textAlign: TextAlign.center,
                    style: kMyTextDecoration,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
