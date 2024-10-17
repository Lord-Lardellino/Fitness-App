import 'package:flutter/material.dart';

class PrincipaliInsiemiNumericiScreen extends StatefulWidget {
  PrincipaliInsiemiNumericiScreen({super.key});

  @override
  State<StatefulWidget> createState() =>
      _PrincipaliInsiemiNumericiScreenState();
}

class _PrincipaliInsiemiNumericiScreenState
    extends State<PrincipaliInsiemiNumericiScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Principali insiemi numerici'),
          ],
        ),
      ),
    );
  }
}
