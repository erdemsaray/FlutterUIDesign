import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    Key? key,
    required this.textFormController,
    required this.hintText,
    required this.formIcon,
    required this.textClicked,
  }) : super(key: key);

  final TextEditingController textFormController;
  final String hintText;
  final IconData formIcon;
  final IconData? formSuffixIcon = null;
  final VoidCallback textClicked;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        textClicked();
      },
      style: const TextStyle(color: Colors.white),
      controller: textFormController,
      autofocus: false,
      obscureText: hintText == "Password" ? true : false,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white,
        )),
        hoverColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        suffixIcon: Icon(formSuffixIcon, color: Colors.white),
        prefixIcon: Icon(
          formIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
