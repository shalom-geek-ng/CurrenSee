import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool ObscuredText;
  final Widget? suffixIcon;
  const DefaultTextField({super.key,
    required this.controller,
    required this.hintText,
    required this.ObscuredText,
    this.suffixIcon

  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: TextField(
        controller: controller,
          obscureText: ObscuredText,
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              suffixIcon: suffixIcon,

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.black)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade400)
              )
          ),

      ),
    );
  }
}
