import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleWidget extends StatefulWidget {
  String title = "";
  double fontSize = 24;
  FontWeight? fontWeight = FontWeight.normal;

  TitleWidget(
      {super.key,
      required this.title,
      required this.fontSize,
      this.fontWeight});

  @override
  State<StatefulWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: widget.fontSize, fontWeight: widget.fontWeight),
          textScaler:
              TextScaler.linear(MediaQuery.of(context).size.width / 700)),
    );
  }
}
