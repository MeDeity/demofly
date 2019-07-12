import 'package:demofly/box_game.dart';
import 'package:demofly/component/fly.dart';
import 'package:flame/sprite.dart';

class AgileFly extends Fly{
  AgileFly(BoxGame boxGame, double x, double y) : super(boxGame, x, y){
    flySprites = List<Sprite>();
    flySprites.add(Sprite('flies/agile-fly-1.png'));
    flySprites.add(Sprite('flies/agile-fly-2.png'));
    deadSprite = Sprite('flies/agile-fly-dead.png');
  }

}