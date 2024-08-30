import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  String placeHolderText;
  String labelText;
  TextInputType? keyboardType;
  TextEditingController? textController;
  void Function(String)? onChanged;
  String? Function(String?)? validator;
  bool? isObscureText;

  AppTextFormField(
      {required this.placeHolderText,
      required this.labelText,
      this.keyboardType,
      this.textController,
      this.validator,
      this.isObscureText,
      this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              labelText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            controller: textController,
            keyboardType: keyboardType,
            validator: validator,
            obscureText: isObscureText ?? false,
            onChanged: onChanged,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              hintText: placeHolderText,
            ),
          )
        ],
      ),
    );
  }
}
