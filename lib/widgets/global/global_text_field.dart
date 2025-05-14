import 'package:flutter/material.dart';
import '../../../core/core.dart';

class GlobalTextFormField extends StatelessWidget {
  final String label;
  final FocusNode? focusNode;
  final bool isSensitive;
  final TextInputAction textInputAction;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onSuffixPressed;
  final TextEditingController controller;

  const GlobalTextFormField({
    super.key,
    required this.label,
    required this.controller,
    this.focusNode,
    this.prefixIcon,
    this.suffixIcon,
    this.isSensitive = false,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted,
    this.onSuffixPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      obscureText: isSensitive,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        labelText: label,
        border: const UnderlineInputBorder(),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppColors.black,
              )
            : null,
        suffix: suffixIcon != null
            ? IconButton(onPressed: onSuffixPressed, icon: Icon(suffixIcon))
            : null,
      ),
    );
  }
}
