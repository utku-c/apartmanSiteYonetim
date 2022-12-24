import 'package:flutter/material.dart';
import '../login/login_success/login_success.dart';
import '../login/sign_in/sign_in_screen.dart';
import '../login/sign_up/sign_up_screen.dart';
import '../menu/dilek_sikayet/dilek_sikayet_sayfasi.dart';
import '../menu/kural/kural_sayfasi.dart';
import '../menu/odeme/dekont/dekont_sayfasi.dart';
import '../menu/odeme/odeme_sayfasi.dart';
import '../otp/otp_ekran.dart';
import '../screens/zoom_drawer/widgets/anasayfa/widgets/yapilan_calismalar.dart';
import '../screens/zoom_drawer/widgets/duyuru/duyuru_sayfasi.dart';
import '../menu/mesajlasma/mesajlasma_ekrani.dart';
import '../screens/zoom_drawer/zoom_drawer_home.dart';

final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  MyZoomDrawer.routeName: (context) => const MyZoomDrawer(),
  KuralEkrani.routeName: (context) => const KuralEkrani(),
  DilekSikayetSayfasi.routeName: (context) => const DilekSikayetSayfasi(),
  OdemeSayfasi.routeName: (context) => const OdemeSayfasi(),
  DuyuruSayfasi.routeName: (context) => const DuyuruSayfasi(),
  YapilanCalismalar.routeName: (context) => const YapilanCalismalar(),
  DekontSayfasi.routeName: (context) => const DekontSayfasi(),
  MesajlasmaEkrani.routeName: (context) => const MesajlasmaEkrani(),
};
