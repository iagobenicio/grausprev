import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final value;
  final textsize;
  TextComponent(this.value, {this.textsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      "$value",
      style: TextStyle(
        color: Colors.white,
        fontSize: this.textsize,
      ),
    );
  }
}
