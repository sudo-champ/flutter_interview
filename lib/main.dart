import 'package:flutter/material.dart';
import 'package:flutter_interview/util/hard_task.dart';



void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = TextEditingController();
  List<String> foundWords = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: TextField(
                controller: controller,
                onChanged: (val) async {
                  final fordbiddens = await checkForbiddenWords(controller);
                  setState(() {
                    foundWords = fordbiddens;
                  });
                },
                keyboardType: TextInputType.multiline,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final fordbiddens = await checkForbiddenWords(controller);
                    setState(() {
                      foundWords = fordbiddens;
                    });
                    controller.text = '';
                  },
                  child: const Text('Check Forbidden Words'),
                ),
              ),
            ),
            // display found words
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.only(top: 500),
                child: FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Flagged Words:=>\n ${foundWords.join(",\t ")}',
                        style: const TextStyle(fontSize: 18, color: Colors.red)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
