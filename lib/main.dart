import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Siren Rakshak',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Emergency Siren Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //test siren on pressing the siren image
            IconButton(
              icon: Image.asset('logo.png'),
              iconSize: 50,
              onPressed: () {
                player.play(AssetSource('siren.mp3'));
              },
            ),

            //plAY sIREN on button
            ElevatedButton(
                onPressed: (){
              player.play(AssetSource('siren.mp3'));
            },
                child:const Text('Play Siren')
            ),
            //Stop Siren
            ElevatedButton(
                onPressed: (){
                  player.stop();
                },
                child:const Text('Stop Siren')
            ),
          ],
        ),
      ),

      ); // This trailing comma makes auto-formatting nicer for build methods.

  }
}

