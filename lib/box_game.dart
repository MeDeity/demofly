import 'dart:ui';

import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';

class BoxGame extends Game{
  Size screenSize;
  bool isGameOver = false;

  @override
  void render(Canvas canvas) {
    //尝试着给它一个黑色背景
    Rect backgroundRect = Rect.fromLTRB(0, 0, screenSize.width, screenSize.height);
    Paint backgroundPaint = Paint();
    backgroundPaint.color = Color(0xff000000);
    canvas.drawRect(backgroundRect, backgroundPaint);

    //尝试着绘制一个Box，位于屏幕中间
    double centerX = screenSize.width/2;
    double centerY = screenSize.height/2;

    Rect boxRect = Rect.fromLTWH(centerX-50, centerY-50, 100, 100);
    Paint boxPaint = Paint();
    if(isGameOver){
      boxPaint.color = Color(0xff0000ff);      
    }else{
      boxPaint.color = Color(0xffffffff);  
    }
    canvas.drawRect(boxRect, boxPaint);
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

  @override
  void resize(Size size) {
    super.resize(size);
    screenSize = size;//保存当前的屏幕值
  }

  void onTapDown(TapDownDetails details){
    double centerX = screenSize.width/2;
    double centerY = screenSize.height/2;
    if(details.globalPosition.dx>=centerX-50
      &&details.globalPosition.dx<=centerX+50
      &&details.globalPosition.dy>=centerY-50
      &&details.globalPosition.dy<=centerY+50){
          isGameOver = true;
      }
  }

}