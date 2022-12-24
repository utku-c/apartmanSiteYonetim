import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constant/constant.dart';
import '../ayarlar/menu_ayarlar.dart';
import 'widgets/yapilan_calismalar.dart';
import '../duyuru/duyuru_sayfasi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(this.zoomDrawerController, {super.key});

  // ignore: prefer_typing_uninitialized_variables
  final zoomDrawerController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectinIndex = 0;
  var now = DateTime.now();

  final double _animateContainerWitdth = 74;

  final String _homeProfileUrl = "assets/icons/home_home.svg";
  final String _homeStatisicseUrl = "assets/icons/home_notification.svg";
  final String _homeSettingUrl = "assets/icons/home_settings.svg";
  final double _bottomBarHeight = 60;
  final double _svgWitdh = 28;
  final int _duration = 600;

  @override
  Widget build(BuildContext context) {
    PageController myPage = PageController(initialPage: _selectinIndex);
    return Scaffold(
      //bottomNavigationBar: Container(child: Text("efnskjfnksnfksnefkjsnef")),
      bottomSheet: homeBottomBar(myPage),
      // appBar: AppBar(
      //   leading: InkWell(
      //     onTap: () => widget.zoomDrawerController.toggle(),
      //     child: const Icon(Icons.menu_open_outlined),
      //   ),
      // ),
      appBar: AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 17,
            top: 17,
            bottom: 17,
            right: 5,
          ),
          child: Stack(
            children: [
              Container(
                width: 60,
                height: 55,
                decoration: BoxDecoration(
                  color: kMyPrimaryTextColor,
                  borderRadius: MyBorderRadius.circularLow(),
                  border: Border.all(
                    color: kMyPrimaryColor,
                    width: 2,
                  ),
                ),
                child: InkWell(
                  onTap: () => widget.zoomDrawerController.toggle(),
                  child: const Icon(
                    Icons.menu_open_outlined,
                    size: 26,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 12,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "3",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: myPage,
        children: const [
          YapilanCalismalar(),
          DuyuruSayfasi(),
          Ayarlar(),
        ],
      ),
    );
  }

  Padding homeBottomBar(PageController myPage) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: MyBorderRadius.circularSoHigh(),
          color: kMyPrimaryTextColor,
          border: Border.all(
            color: kMyPrimaryColor,
            width: 2.5,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: _bottomBarHeight,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: _duration),
                  width: _animateContainerWitdth,
                  decoration: BoxDecoration(
                    color: _selectinIndex == 0 ? kMyBackgroundColor : null,
                    borderRadius: MyBorderRadius.circularHigh(),
                    // border: _selectinIndex == 0
                    //       Border.all(
                    //         color: kMyPrimaryColor,
                    //         width: 1.5,
                    //       )
                    //     : null,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _selectinIndex = 0;
                        myPage.jumpToPage(_selectinIndex);
                      });
                    },
                    icon: SvgPicture.asset(
                      width: _svgWitdh,
                      _homeProfileUrl,
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: _duration),
                  width: _animateContainerWitdth,
                  decoration: BoxDecoration(
                    color: _selectinIndex == 1 ? kMyBackgroundColor : null,
                    borderRadius: MyBorderRadius.circularHigh(),
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _selectinIndex = 1;
                            myPage.jumpToPage(_selectinIndex);
                          });
                        },
                        icon: SvgPicture.asset(
                          _homeStatisicseUrl,
                          width: _svgWitdh,
                        ),
                      ),
                      Positioned(
                        bottom: 26,
                        left: 50,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: _duration),
                  width: _animateContainerWitdth,
                  decoration: BoxDecoration(
                    color: _selectinIndex == 2 ? kMyBackgroundColor : null,
                    borderRadius: MyBorderRadius.circularHigh(),
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _selectinIndex = 2;
                        myPage.jumpToPage(_selectinIndex);
                      });
                    },
                    icon: SvgPicture.asset(
                      _homeSettingUrl,
                      width: _svgWitdh,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
