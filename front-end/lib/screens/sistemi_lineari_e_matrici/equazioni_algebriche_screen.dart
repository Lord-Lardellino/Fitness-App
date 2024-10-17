import 'package:flutter/material.dart';
import 'package:memos_app/widgets/title_widget.dart';

class EquazioniAlgebricheScreen extends StatefulWidget {
  EquazioniAlgebricheScreen({super.key});

  @override
  State<StatefulWidget> createState() => _EquazioniAlgebricheScreenState();
}

class _EquazioniAlgebricheScreenState extends State<EquazioniAlgebricheScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleWidget(title: 'Equazioni algebriche',fontSize: 24,fontWeight: FontWeight.bold),
            SizedBox(height: MediaQuery.of(context).size.width / 10,),
            TitleWidget(title: '1.1 Teorema Fondamentale dell Algebra ',fontSize: 18,fontWeight: FontWeight.bold),        
            TitleWidget(title: 'Ogni polinomio complesso di grado maggiore o uguale a 1 possiede almeno una radice complessa.',fontSize: 14),
          ],
        ),
      ),
    );
  }
}
