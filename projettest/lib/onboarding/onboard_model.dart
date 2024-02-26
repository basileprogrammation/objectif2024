import 'package:flutter/cupertino.dart';
//Les widgets Cupertino dans Flutter suivent les directives
//de linterface humaine iOS pour implémenter la conception visuelle diOS

class OnboardModel {
  String img;
  String text;
  String desc;
  Color bg;
  Color button;

  OnboardModel({
    required this.img,
    required this.text,
    required this.desc,
    required this.bg,
    required this.button,
  });
}