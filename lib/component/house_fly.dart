
import 'package:demofly/box_game.dart';
import 'package:demofly/component/fly.dart';
import 'package:flame/sprite.dart';

class HouseFly extends Fly{

  HouseFly(BoxGame boxGame, double x, double y) : super(boxGame, x, y){
    flySprites = List<Sprite>();
    flySprites.add(Sprite("flies/house-fly-1.png"));
    flySprites.add(Sprite("flies/house-fly-2.png"));
    deadSprite = Sprite("flies/house-fly-dead.png");
  }
  
}