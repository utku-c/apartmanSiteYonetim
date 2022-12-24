import 'package:flutter/material.dart';

import '../../../widget/app_bar_leading_widget.dart';

class KiraOdeme extends StatefulWidget {
  const KiraOdeme({Key? key, required this.odemeYontemi}) : super(key: key);
  final String odemeYontemi;

  @override
  State<KiraOdeme> createState() => _KiraOdemeState();
}

class _KiraOdemeState extends State<KiraOdeme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: const AppBarLeadingWidget(),
        title: Text("Kira Ödemesi ${widget.odemeYontemi}"),
        actions: const [
          AppBarCloseWidget(),
        ],
      ),
    );
  }
}
