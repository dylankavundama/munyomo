import 'package:flutter/material.dart';

import '../CONFIG/color.dart';

class TextFormIputWigdet extends StatelessWidget {
  const TextFormIputWigdet(
      {Key? key,
      required this.username,
      required this.label,
      required this.isObscure})
      : super(key: key);

  final TextEditingController username;
  final String label;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: username,
      obscureText: isObscure,
      style: const TextStyle(color: inputColor),
      decoration: InputDecoration(
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: label,
          hoverColor: inputColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
