import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Image.asset("assets/tela_inicial.png", height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,)
        ],
      ));
  }
}
