import 'dart:math';
import 'dart:ui';

import 'package:demofly/component/backyart.dart';
import 'package:demofly/component/fly.dart';
import 'package:demofly/component/house_fly.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/gestures.dart';

import 'component/agile_fly.dart';
import 'component/drooler_fly.dart';
import 'component/hungry_fly.dart';
import 'component/macho_fly.dart';

class BoxGame extends Game {
  Size screenSize;
  //贴图宽度
  double titleSize;
  bool isGameOver = false;
  Backyart backyart;
  List<Fly> flies;
  Random random = Random();

  BoxGame() {
    initialize();
  }

  void initialize() async {
    flies = List<Fly>();
    resize(await Flame.util.initialDimensions());
    backyart = Backyart(this);
    createFly();
  }

  void createFly() {
    double x = random.nextDouble() * (screenSize.width - titleSize);
    double y = random.nextDouble() * (screenSize.height - titleSize);
    switch (random.nextInt(5)) {
      case 0:
        flies.add(HouseFly(this, x, y));
        break;
      case 1:
        flies.add(DroolerFly(this, x, y));
        break;
      case 2:
        flies.add(AgileFly(this, x, y));
        break;
      case 3:
        flies.add(HungryFly(this, x, y));
        break;
      case 4:
        flies.add(MachoFly(this, x, y));
        break;
    }
  }

  @override
  void render(Canvas canvas) {
    //尝试着给它一个黑色背景
    // Rect backgroundRect = Rect.fromLTRB(0, 0, screenSize.width, screenSize.height);
    // Paint backgroundPaint = Paint();
    // backgroundPaint.color = Color(0xff000000);
    // canvas.drawRect(backgroundRect, backgroundPaint);

    backyart.render(canvas);

    //尝试着绘制一个Box，位于屏幕中间
    double centerX = screenSize.width / 2;
    double centerY = screenSize.height / 2;

    Rect boxRect = Rect.fromLTWH(centerX - 50, centerY - 50, 100, 100);
    Paint boxPaint = Paint();
    if (isGameOver) {
      boxPaint.color = Color(0xff0000ff);
    } else {
      boxPaint.color = Color(0xffffffff);
    }
    canvas.drawRect(boxRect, boxPaint);

    //渲染敌人
    flies.forEach((fly) {
      fly.render(canvas);
    });
  }

  @override
  void update(double t) {
    // TODO: implement update
  }

  @override
  void resize(Size size) {
    super.resize(size);
    screenSize = size; //保存当前的屏幕值
    titleSize = screenSize.width / 9;
  }

  void onTapDown(TapDownDetails details) {
    double centerX = screenSize.width / 2;
    double centerY = screenSize.height / 2;
    if (details.globalPosition.dx >= centerX - 50 &&
        details.globalPosition.dx <= centerX + 50 &&
        details.globalPosition.dy >= centerY - 50 &&
        details.globalPosition.dy <= centerY + 50) {
      isGameOver = true;
    }
  }
}
