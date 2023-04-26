import 'package:flutter/material.dart';

class Dictionary {
  String alphabet;
  String title;
  String summary;
  String description;
  String audio_file;

  Dictionary(
      {required this.alphabet,
      required this.title,
      required this.summary,
      required this.description,
      required this.audio_file});

  static Dictionary fromJson(json) => Dictionary(
    alphabet: json['title'],
    title: json['title'],
    summary: json['desc1'],
    description: json['desc2'],
    audio_file: json['desc3']
  );
}