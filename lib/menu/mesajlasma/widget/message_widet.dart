import 'package:apt_site_yonetim/constant/constant.dart';
import 'package:flutter/material.dart';

class MessageTextWidget extends StatelessWidget {
  const MessageTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
      padding: const EdgeInsets.only(
        top: 2,
        bottom: 2,
        left: 100,
        right: 8,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: MyBorderRadius.circularNormal(),
          color: kMyPrimaryTextColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Row(
            children: [
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(text),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "${DateTime.now().hour}.${DateTime.now().minute}",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: IconButton(
                    icon: const Icon(Icons.where_to_vote, size: 26),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
