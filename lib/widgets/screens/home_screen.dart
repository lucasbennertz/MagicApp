import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final children = Scaffold(
      body: Image.asset("assets/tela_inicial.png",
       width: double.infinity,
       height: double.infinity,
       fit: BoxFit.cover,
      ),
    );
    return GestureDetector(
      onTapDown: _onTapDown,
      child: children,
    );
  }
}
_onTapDown(TapDownDetails details){
  var y = details.globalPosition.dy;
  var x = details.globalPosition.dy;

  print(details.globalPosition);

  int dx = (x/180).floor();
  int dy = ((y-180) / 132).floor();
  int posicao = dx * 6 + dy;

  print('results: x:$dx, y:$dy, position: $posicao');
}