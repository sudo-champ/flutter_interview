import 'dart:async';
import 'dart:isolate';

import 'package:flutter/cupertino.dart';

import 'forbidden.dart';

Future<List<String>> checkForbiddenWords(TextEditingController controller) async {
  String text = controller.text;

  List<String> words = text.split(' ');

  

  return [];
}

void checkText(Map<String, dynamic> message) {

}
