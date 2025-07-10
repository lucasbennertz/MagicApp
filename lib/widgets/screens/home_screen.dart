import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:gallery_saver/gallery_saver.dart';

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
  var x = details.globalPosition.dx;

  print(details.globalPosition);

  int? dx = (x/112).floor();
  int dy = ((y-156) / 108).floor();
  int posicao = dy * 2 + dx;

  print('results: x:$dx, y:$dy, position: $posicao');
  _save(posicao);
}

_save(int posicao) async{
  var appDocDir = await getTemporaryDirectory();
  String savePath =  "${appDocDir.path}efeito-$posicao.jpg";
  print(savePath);
  await Dio().download("https://github.com/lucasbennertz/efeito-flutter-magic/raw/main/efeito-$posicao.jpg", savePath);
  print("saved");
  final result = GallerySaver.saveImage(savePath);
  print(result);
}