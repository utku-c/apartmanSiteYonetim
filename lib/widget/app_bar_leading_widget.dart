import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../screens/zoom_drawer/zoom_drawer_home.dart';

class AppBarLeadingWidget extends StatelessWidget {
  const AppBarLeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 17,
        right: 17,
        top: 17,
        bottom: 17,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kMyPrimaryTextColor.withOpacity(0.4),
          borderRadius: MyBorderRadius.circularLow(),
          border: Border.all(
            color: kMyPrimaryColor,
            width: 2,
          ),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class AppBarCloseWidget extends StatelessWidget {
  const AppBarCloseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 17,
        right: 17,
        top: 17,
        bottom: 17,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kMyPrimaryTextColor.withOpacity(0.4),
          borderRadius: MyBorderRadius.circularLow(),
          border: Border.all(
            color: kMyPrimaryColor,
            width: 2,
          ),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.close,
          ),
          onPressed: () {
            Navigator.popAndPushNamed(context, MyZoomDrawer.routeName);
          },
        ),
      ),
    );
  }
}
