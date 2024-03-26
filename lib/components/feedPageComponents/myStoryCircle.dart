import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class myStoryCircle extends StatelessWidget {
  const myStoryCircle(
      {super.key, required this.nickname, required this.iconName});
  final String nickname;
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 62,
            height: 40,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              "assets/$iconName.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            nickname,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
