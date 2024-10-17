import 'package:flutter/material.dart';
import 'package:memos_app/utilities/navigaton_manager.dart';
import 'package:memos_app/widgets/button_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                title: '1 - Sistemi lineari e matrici',
                url: NavigationManager.sistemiLineariMatrici),
          ],
        ),
      ),
    );
  }
}
