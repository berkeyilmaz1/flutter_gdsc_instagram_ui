import 'package:flutter/material.dart';

class myStoryCircle extends StatelessWidget {
  const myStoryCircle({super.key});

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
            decoration:
                const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            child: const Icon(
              Icons.person,
              size: 36,
            ),
          ),
          const Text("name")
        ],
      ),
    );
  }
}
