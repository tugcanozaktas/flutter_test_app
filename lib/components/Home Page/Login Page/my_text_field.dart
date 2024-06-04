import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextField(
          style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold),
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.inversePrimary,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle:
                  TextStyle(color: Theme.of(context).colorScheme.primary)),
        ),
      ),
    );
  }
}
