import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/constant.dart';

class OdemeTipiSecim extends StatelessWidget {
  const OdemeTipiSecim({
    Key? key,
    required this.url,
    required this.baslik,
  }) : super(key: key);
  final String url;
  final String baslik;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: kMyPrimaryTextColor.withOpacity(0.7),
          borderRadius: MyBorderRadius.circularHigh(),
        ),
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset(
              url,
              width: 70,
              height: 70,
            ),
            const Spacer(),
            Text(
              baslik,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
