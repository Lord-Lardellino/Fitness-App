import 'package:flutter/material.dart';

class EquazioniAlgebricheScreen extends StatefulWidget {
  EquazioniAlgebricheScreen({super.key});

  @override
  State<StatefulWidget> createState() => _EquazioniAlgebricheScreenState();
}

class _EquazioniAlgebricheScreenState extends State<EquazioniAlgebricheScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Equazioni algebriche'),
          ],
        ),
      ),
    );
  }
}
