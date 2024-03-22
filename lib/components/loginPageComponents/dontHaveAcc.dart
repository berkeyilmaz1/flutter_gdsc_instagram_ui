import 'package:flutter/material.dart';

class DontHaveAcc extends StatelessWidget {
  const DontHaveAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Don't have an account? Sign Up",
              style: TextStyle(color: Colors.black),
            )),
      ],
    );
  }
}
