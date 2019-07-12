import 'package:demofly/box_game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/cupertino.dart';

///
///背景组件
///create by fengwenhua at 2019-7-12 20:15:22
///
class Backyart{
  BoxGame boxGame;
  Sprite backgroundSprite;
  Rect bgRect;

  Backyart(BoxGame boxGame){
    this.boxGame = boxGame;
    backgroundSprite = Sprite("bg/backyard.png");
    bgRect = Rect.fromLTWH(0, 0, boxGame.screenSize.width, boxGame.screenSize.height);
    print("背景大小:${boxGame.screenSize.width}x${boxGame.screenSize.height}");
  }

  void render(Canvas canvas){
    backgroundSprite.renderRect(canvas,bgRect);
  }

  void update(double time){

  }

}