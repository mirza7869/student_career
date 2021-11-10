import 'package:flutter/material.dart';

class InputField extends StatefulWidget {

  final String? hintText;
  final double? width;
  final TextEditingController? controller;
  final bool? isPassword;
  final IconData? icon;

  const InputField({Key? key, this.hintText, this.width, this.controller, this.isPassword, this.icon,}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: 40,
      child: TextField(
        controller: widget.controller,
        obscureText: widget.isPassword ?? false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none
        ),
      ),
    );
  }
}
