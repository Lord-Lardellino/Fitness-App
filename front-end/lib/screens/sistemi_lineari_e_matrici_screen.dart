import 'package:flutter/material.dart';
import 'package:memos_app/utilities/navigaton_manager.dart';
import 'package:memos_app/widgets/button_widget.dart';

class SistemiLineariMatriciSceen extends StatefulWidget {
  SistemiLineariMatriciSceen({super.key});

  @override
  State<StatefulWidget> createState() => _SistemiLineariMatriciSceenState();
}

class _SistemiLineariMatriciSceenState
    extends State<SistemiLineariMatriciSceen> {
  var emailController = TextEditingController();
  var passController = TextEditingController();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ButtonWidget(
                title: '1.1 - Principali insiemi numerici',
                url: NavigationManager.principaliInsiemiNumerici),

            ButtonWidget(
                title: '1.2 - Equazioni algebriche',
                url: NavigationManager.equazioniAlgebriche),
          ],
        ),
      ),
    );
  }
}
