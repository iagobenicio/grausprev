import 'package:flutter/material.dart';

class ColumnCP extends StatelessWidget {
  List<Widget> widgets;

  ColumnCP(this.widgets);

  @override
  Widget build(BuildContext context) {
    return Column(children: this.widgets);
  }
}
