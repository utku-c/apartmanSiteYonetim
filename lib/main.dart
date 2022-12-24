import 'package:apt_site_yonetim/constant/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login/sign_in/sign_in_screen.dart';
import 'routes/routes.dart';
import 'screens/ayar_sayfalar/provider/kart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => KartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yönetim',
        theme: appTheme(),
        //home: const OtpScreen(),
        initialRoute: SignInScreen.routeName,
        routes: routes,
      ),
    );
  }
}
