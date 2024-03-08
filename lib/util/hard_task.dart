import 'dart:async';
import 'dart:isolate';

import 'package:flutter/cupertino.dart';

import 'forbidden.dart';

Future<List<String>> checkForbiddenWords(TextEditingController controller) async {
  String text = controller.text;

  List<String> words = text.split(' ');



  final completer = Completer<List<String>>();
  receivePort.listen((message) {
    if (message is List<String>) {
      completer.complete(message);
    }
  });

  isolate.addOnExitListener(receivePort.sendPort);
  isolate.ping(receivePort.sendPort);

  final result = await completer.future;
  receivePort.close();
  isolate.kill();

  return result;
}

void checkText(Map<String, dynamic> message) {

  final text = message['text'];
  final sendPort = message['sendPort'];

}
