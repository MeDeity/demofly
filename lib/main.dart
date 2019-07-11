import 'package:demofly/box_game.dart';
import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  Util flameUtils = Util();
  await flameUtils.fullScreen();
  await flameUtils.setOrientation(DeviceOrientation.portraitUp);

  BoxGame boxGame = BoxGame();
  TapGestureRecognizer recognizer = TapGestureRecognizer();
  recognizer.onTapDown = boxGame.onTapDown;
  runApp(boxGame.widget);
  flameUtils.addGestureRecognizer(recognizer);
}




