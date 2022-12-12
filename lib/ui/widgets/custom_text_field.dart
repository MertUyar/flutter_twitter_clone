
import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone_app/ui/theme/theme.dart';

class CustomTextField extends StatefulWidget {

  String? hintText;
  bool? obscureText;

  CustomTextField({Key? key, this.hintText, this.obscureText}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
      ),
      obscureText: widget.obscureText ?? false,
    );
  }
}
