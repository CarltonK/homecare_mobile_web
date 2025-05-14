import 'package:flutter/material.dart';
import '../../../core/core.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: 259,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: AppColors.lightBackgroundGrey,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: kRadius10,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: kRadius10,
          ),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search here',
          hintStyle: kLightBlack.copyWith(color: AppColors.textGrey),
        ),
      ),
    );
  }
}
