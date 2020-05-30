import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MaterialApp(title: "Tragedy of Darth Plagueis The Wise", home: Hope()));


class Hope extends StatefulWidget {
  _HopeState createState() => _HopeState();
}

class _HopeState extends State<Hope> { @override
  void initState() {
    super.initState();
  }

  void teclaSound(int nota){
  final audioPlayer = AudioCache();
  audioPlayer.play('sound$nota.mp3');
  }

  void teclaLongSound(int nota){
  final audioPlayer = AudioCache();
  audioPlayer.play('long_sound$nota.mp3');
  }

  Expanded creaTecla({Color color, int nota, String text_quote}){
  return Expanded(
  child: FlatButton(
  child: Text('$text_quote', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
  onPressed: (){
  teclaSound(nota);
  },
  onLongPress: (){
  teclaLongSound(nota);
  },
  color:color,
  ),
  );
  }

  @override
  Widget build(BuildContext context){
  return MaterialApp(
  title: 'X',
  theme: ThemeData(
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  ),
  home: Scaffold(
  body: SafeArea(
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
  AlertDialog(title: Text('Instrucciones'), content: Text('Presiona ligero para sonido de sables, manten presionado para escuchar frases icónicas'),),
  creaTecla(color: Colors.red, nota: 1, text_quote: 'Destroyers!'),
  creaTecla(color: Colors.deepOrange, nota: 2, text_quote: 'Vader rises'),
  creaTecla(color: Colors.orange, nota: 3, text_quote: 'Did you ever hear...'),
  creaTecla(color: Colors.yellow, nota: 4, text_quote: 'Bad feeling about this'),
  creaTecla(color: Colors.lightGreen, nota: 5, text_quote: 'Fun begins'),
  creaTecla(color: Colors.green, nota: 6, text_quote: 'Grievous autistic noises #1'),
  creaTecla(color: Colors.lightBlue, nota: 7, text_quote: 'Grievous autistic noises #2'),
  creaTecla(color: Colors.blue, nota: 8, text_quote: 'This is gonna be easy'),
  creaTecla(color: Colors.indigo, nota: 9, text_quote: 'Are you threatening master...'),
  creaTecla(color: Colors.purple, nota: 10, text_quote: 'Show no mercy'),
  ],
  ),
  ),
  ),
  );
  }
  }
