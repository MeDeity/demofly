import 'package:demofly/box_game.dart';
import 'package:demofly/component/fly.dart';
import 'package:flame/sprite.dart';

class HungryFly extends Fly {
  HungryFly(BoxGame boxGame, double x, double y) : super(boxGame, x, y) {
    flySprites = List();
    flySprites.add(Sprite('flies/hungry-fly-1.png'));
    flySprites.add(Sprite('flies/hungry-fly-2.png'));
    deadSprite = Sprite('flies/hungry-fly-dead.png');
  }
}
