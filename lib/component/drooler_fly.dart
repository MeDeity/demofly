
import 'package:demofly/box_game.dart';
import 'package:demofly/component/fly.dart';
import 'package:flame/sprite.dart';

class DroolerFly extends Fly{
  
  DroolerFly(BoxGame boxGame, double x, double y) : super(boxGame, x, y){
    flySprites = List<Sprite>();
    flySprites.add(Sprite("flies/drooler-fly-1.png"));
    flySprites.add(Sprite("flies/drooler-fly-1.png"));
    deadSprite = Sprite("flies/drooler-fly-dead.png");
  }

}