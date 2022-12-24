import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/constant.dart';
import '../../widget/app_bar_leading_widget.dart';
import 'widget/message_widet.dart';

class MesajlasmaEkrani extends StatefulWidget {
  const MesajlasmaEkrani({Key? key}) : super(key: key);
  static String routeName = "/mesajlasma";

  @override
  State<MesajlasmaEkrani> createState() => _MesajlasmaEkraniState();
}

class _MesajlasmaEkraniState extends State<MesajlasmaEkrani> {
  final String _baslikText = "Apartman Mesajlaşma";
  bool sendState = false;
  final mesageText = TextEditingController();
  String? message;
  List<String> demoMesage = [
    "ilk eleman",
  ];

  ///
  ///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 90,
        leading: const AppBarLeadingWidget(),
        actions: const [AppBarCloseWidget()],
      ),
      body: Column(
        // textDirection: TextDirection.rtl,
        textBaseline: TextBaseline.ideographic,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 8),
            child: Row(
              children: [
                Text(
                  "$_baslikText   ${demoMesage.length.toString()}",
                  style: kMyTextDecoration,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        barrierColor: Colors.black54,
                        builder: ((context) {
                          return AlertDialog(
                            title: const Text(
                              "Burada istedğiniz gibi konuşamazsınız",
                            ),
                            content: const Text(
                              "sefskn kjesfnskjen skejnfksnfe",
                            ),
                            icon: SvgPicture.asset(
                              "assets/icons/error.svg",
                              width: 60,
                              height: 60,
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Kapat"),
                              )
                            ],
                          );
                        }));
                  },
                  child: SvgPicture.asset(
                    "assets/icons/kural_exclamation.svg",
                    width: 36,
                    height: 36,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        for (int i = 0; i < demoMesage.length; i++)
                          MessageTextWidget(text: demoMesage[i])
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kMyPrimaryTextColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: TextFormField(
                        controller: mesageText,
                        textInputAction: TextInputAction.send,
                        cursorColor: kMyPrimaryTextColor,
                        style: const TextStyle(
                          color: kMyPrimaryColor,
                        ),
                        //onSaved: (newValue) => message = newValue.toString(),
                        onChanged: (value) {
                          if (value.isEmpty) {
                            setState(() {
                              sendState = false;
                            });
                          } else {
                            setState(() {
                              sendState = true;
                            });
                          }
                        },

                        // validator: (value) {
                        //   if (value != null &&
                        //       value.isEmpty &&
                        //       !errors.contains(kPassNullError)) {
                        //     setState(() {
                        //       errors.add(kPassNullError);
                        //     });
                        //     return "";
                        //   } else if (value != null &&
                        //       value.length < 6 &&
                        //       !errors.contains(kShortPassError)) {
                        //     setState(() {
                        //       errors.add(kShortPassError);
                        //     });
                        //     return "";
                        //   }

                        //   return null;
                        // },
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: const BorderSide(
                              color: kMyPrimaryColor,
                              width: 1.5,
                            ),
                          ),
                          hintText: "Mesaj...",
                          hintStyle: TextStyle(
                              color: kMyPrimaryBlack.withOpacity(0.6)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: kMyPrimaryColor,
                            ),
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Icon(
                              Icons.add_reaction_outlined,
                              color: kMyPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: MyBorderRadius.circularHigh(),
                            color: Colors.green,
                          ),
                          child: IconButton(
                            icon: Icon(
                              sendState == false
                                  ? Icons.mic_outlined
                                  : Icons.send_sharp,
                              size: 30,
                              color: kMyPrimaryTextColor,
                            ),
                            onPressed: () {
                              if (sendState != false) {
                                setState(() {
                                  demoMesage.add(mesageText.value.text);
                                  mesageText.clear();
                                  sendState = false;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
