
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> ?validator;
  final String title;
  final int maxLines;
  const CustomTextFormField({super.key, required this.title,required this.controller, required this.validator,required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator:validator ,
      maxLines:maxLines ,
      decoration: InputDecoration(hintText: title),
    );
  }
}
