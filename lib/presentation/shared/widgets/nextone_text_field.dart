import 'package:flutter/material.dart';

class NextoneTextField extends StatelessWidget {
  const NextoneTextField({
    super.key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.obscureText,
    this.enabled,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.filled = false,
  });

  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final bool? enabled;
  final bool filled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: obscureText ?? false,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const UnderlineInputBorder(),
        filled: filled,
      ),
    );
  }
}
