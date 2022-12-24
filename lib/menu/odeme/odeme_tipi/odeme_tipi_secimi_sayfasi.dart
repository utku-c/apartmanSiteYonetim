import 'package:flutter/material.dart';
import '../../../constant/constant.dart';
import '../../../constant/default_button.dart';
import '../../../enum/odeme_tipleri.dart';
import '../../../widget/app_bar_leading_widget.dart';
import '../odemeler/aidat_odeme.dart';
import '../odemeler/kira_odeme.dart';

class OdemeTipiSecimi extends StatefulWidget {
  const OdemeTipiSecimi({
    Key? key,
    required this.gidilecekSayfaIndex,
    required this.odemeTuru,
  }) : super(key: key);
  final int gidilecekSayfaIndex;
  final String odemeTuru;

  @override
  State<OdemeTipiSecimi> createState() => _OdemeTipiSecimiState();
}

class _OdemeTipiSecimiState extends State<OdemeTipiSecimi> {
  int value = 0;
  final _paymentLabel = [
    OdemeYontem.banka.name,
    OdemeYontem.kredi.name,
    // OdemeYontem.havale.name,
    // OdemeYontem.googleCuzdan.name,
  ];
  final _paymentIcon = [
    Icons.credit_card,
    Icons.credit_card,
    // Icons.account_balance_wallet,
    // Icons.account_balance_wallet,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: const AppBarLeadingWidget(),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
      body: Padding(
        padding: const PagePadding.allNormal(),
        child: Column(
          children: [
            Text(
              "${widget.odemeTuru} için ödeme yöntemini seçiniz...",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.separated(
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          value = index;
                        });
                      },
                      child: Container(
                        decoration: kMyDefaultBoxDecoration,
                        child: ListTile(
                          title: Text(
                            _paymentLabel[index],
                            style: const TextStyle(
                              fontSize: 20,
                              color: kMyPrimaryColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          leading: Icon(
                            _paymentIcon[index],
                            size: 26,
                            color: kMyPrimaryColor,
                          ),
                          trailing: Radio(
                            activeColor: kMyPrimaryColor,
                            value: index,
                            groupValue: value,
                            onChanged: (i) => setState(() => value = i!),
                          ),
                        ),
                      ),
                    );
                  }),
                  separatorBuilder: ((context, index) {
                    return const SizedBox(height: 10);
                  }),
                  itemCount: _paymentLabel.length),
            ),
            DefaultButton(
                text: "Devam",
                press: () {
                  switch (widget.gidilecekSayfaIndex) {
                    case 0:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AidatOdeme(
                              odemeYontemi: _paymentLabel[value],
                            ),
                          ));
                      break;
                    case 1:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KiraOdeme(
                              odemeYontemi: _paymentLabel[value],
                            ),
                          ));
                      break;
                    case 2:
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) =>  AidatOdeme(),
                      //     ));
                      break;
                    default:
                  }
                }),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
