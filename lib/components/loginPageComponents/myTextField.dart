import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hinttext;

  final IconData? icon;

  final bool? obscureText;
  final void Function()? onPressed;
  const MyTextField(
      {super.key,
      required this.hinttext,
      this.icon,
      this.obscureText,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: TextField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
            suffixIcon: IconButton(onPressed: onPressed, icon: Icon(icon)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hinttext,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)))),
      ),
    );
  }
}
