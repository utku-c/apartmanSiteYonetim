// import 'package:apt_site_yonetim/constant/constant.dart';
// import 'package:apt_site_yonetim/menu/odeme/islemler/component/card_utilis.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../../widget/app_bar_leading_widget.dart';

// class KartEkle extends StatefulWidget {
//   const KartEkle({Key? key}) : super(key: key);

//   @override
//   State<KartEkle> createState() => _KartEkleState();
// }

// class _KartEkleState extends State<KartEkle> {
//   TextEditingController cardNumberController = TextEditingController();
//   CardType cardType = CardType.Invalid;

//   void getCardTypeFrmNum() {
//     if (cardNumberController.text.length <= 6) {
//       String cardNum = CardUtils.getCleanedNumber(cardNumberController.text);
//       CardType type = CardUtils.getCardTypeFrmNumber(cardNum);
//       if (type != cardType) {
//         setState(() {
//           cardType = type;
//         });
//       }
//     }
//   }

//   @override
//   void initState() {
//     cardNumberController.addListener(() {
//       getCardTypeFrmNum();
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leadingWidth: 90,
//         leading: const AppBarLeadingWidget(),
//       ),
//       body: Padding(
//         padding: const PagePadding.allNormal(),
//         child: Column(
//           children: [
//             TextFormField(
//               controller: cardNumberController,
//               keyboardType: TextInputType.number,
//               inputFormatters: [
//                 FilteringTextInputFormatter.digitsOnly,
//                 LengthLimitingTextInputFormatter(19),
//                 CardNumberInputFormatter(),
//               ],
//               decoration: InputDecoration(
//                 hintText: "Card Numarası",
//                 prefixIcon: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: SvgPicture.asset(
//                     "assets/icons/wallet.svg",
//                     height: 16,
//                   ),
//                 ),
//                 suffixIcon: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: CardUtils.getCardIcon(cardType),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20)
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CardNumberInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     if (newValue.selection.baseOffset == 0) {
//       return newValue;
//     }

//     String inputData = newValue.text;
//     StringBuffer buffer = StringBuffer();

//     for (var i = 0; i < inputData.length; i++) {
//       buffer.write(inputData[i]);
//       int index = i + 1;

//       if (index % 4 == 0 && inputData.length != index) {
//         buffer.write("  ");
//       }
//     }
//     return TextEditingValue(
//       text: buffer.toString(),
//       selection: TextSelection.collapsed(offset: buffer.toString().length),
//     );
//   }
// }
