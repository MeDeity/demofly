
import 'package:demofly/box_game.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/widgets.dart';

class Fly{
  List<Sprite> flySprites;
  Sprite deadSprite;
  double flyIndex = 0;
  BoxGame boxGame;
  bool isDead =false;
  bool isOffScreen;
  Rect rect;

  Fly(BoxGame boxGame,double x,double y){
    this.boxGame = boxGame;
    rect = Rect.fromLTWH(x, y, boxGame.titleSize, boxGame.titleSize);
  }

  void render(Canvas canvas){
      if(isDead){
        deadSprite.renderRect(canvas, rect.inflate(2));
      }else{
        flySprites[flyIndex.toInt()].renderRect(canvas, rect.inflate(2));
      }
  }

  void update(double time){
    if(isDead){
      rect = rect.translate(0, boxGame.titleSize*12*time);
      if(rect.top>boxGame.screenSize.height){
        isOffScreen = true;
      }
    }
  }

}