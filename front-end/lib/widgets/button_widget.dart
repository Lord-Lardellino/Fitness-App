import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatefulWidget {
  String title = "";
  String url = "";

  ButtonWidget({super.key, required this.title, required this.url});

  @override
  State<StatefulWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      child: InkWell(
        onTap: () => {context.go(widget.url)},
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(widget.title,
              style: const TextStyle(fontSize: 24),
              textScaler:
                  TextScaler.linear(MediaQuery.of(context).size.width / 1000)),
        ),
      ),
    );
  }
}
