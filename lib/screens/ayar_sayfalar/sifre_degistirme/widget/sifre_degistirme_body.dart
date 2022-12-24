import 'package:flutter/material.dart';

import '../../../../constant/constant.dart';
import '../../../../constant/custom_suffix_icon.dart';
import '../../../../constant/default_button.dart';
import '../../../../login/sign_in/widgets/form_error.dart';

class SifreDegistirmeBody extends StatefulWidget {
  const SifreDegistirmeBody({Key? key}) : super(key: key);

  @override
  State<SifreDegistirmeBody> createState() => _SifreDegistirmeBodyState();
}

class _SifreDegistirmeBodyState extends State<SifreDegistirmeBody> {
  final _fromKey = GlobalKey<FormState>();
  String? lastpassword;
  String? newpassword;
  String? conformPassword;

  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Padding(
        padding: const PagePadding.allNormal(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              lastPasswordFromField(),
              const SizedBox(height: 20),
              passwordFromField(),
              const SizedBox(height: 20),
              conformPasswordFromField(),
              const SizedBox(height: 20),
              FormError(errors: errors),
              const SizedBox(height: 20),
              DefaultButton(
                text: "Devam Et",
                press: () {
                  if (_fromKey.currentState != null &&
                      _fromKey.currentState!.validate()) {
                    print(lastpassword);
                    print(newpassword);
                    print(conformPassword);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  TextFormField conformPasswordFromField() {
    return TextFormField(
      textInputAction: TextInputAction.done,
      onSaved: (newValue) => conformPassword = newValue,
      obscureText: true,
      onChanged: (value) {
        if (newpassword == conformPassword) {
          removeError(error: kMatchPassError);
        }

        return;
      },
      validator: (value) {
        if (value != null && value.isEmpty) {
          return "";
        } else if (newpassword != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Şifreyi Tekrar Girin",
        labelText: "Tekrar Girin",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/password.svg",
          size: 36,
        ),
      ),
    );
  }

  TextFormField passwordFromField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      onSaved: (newValue) => newpassword = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 6) {
          removeError(error: kShortPassError);
        }
        newpassword = value;
        return;
      },
      validator: (value) {
        if (value != null && value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value != null && value.length < 6) {
          addError(error: kShortPassError);
          return "";
        }

        return null;
      },
      decoration: const InputDecoration(
        hintText: "Şifrenizi Girin",
        labelText: "Şifre",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/password.svg",
          size: 36,
        ),
      ),
    );
  }

  TextFormField lastPasswordFromField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      onSaved: (newValue) => lastpassword = newValue,
      obscureText: true,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 6) {
          removeError(error: kShortPassError);
        }
        lastpassword = value;
        return;
      },
      validator: (value) {
        if (value != null && value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value != null && value.length < 6) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Eski Şifreniz",
        labelText: "Eski Şifre",
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/password.svg",
          size: 36,
        ),
      ),
    );
  }
}
