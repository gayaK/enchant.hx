package ;

import enchantHaxe.nineleap.SplashSceneHx;
import enchantHaxe.SceneHx;
import enchantHaxe.SpriteHx;
import enchantHaxe.ui.BarHx;
import enchantHaxe.ui.ScoreLabelHx;
import enchantHaxe.ui.TimeLabelHx;
import enchantHaxe.ui.VirtualMapHx;
import js.Lib;
import enchant.EnchantJS;
import enchant.nineleap.NineLeap;
import enchant.ui.UI;
import enchantHaxe.EnchantHx;
import enchantHaxe.CoreHx;
import enchantHaxe.EventType;

/**
 * ...
 * @author pon_zu
 */

class Main 
{
    static function main() 
    {
        // JavaScript の enchant(); に相当
        EnchantHx.exportAll();
        
        var game = new CoreHx(new Core(320,320));
        game.fps = 15;
        game.preload(["chara1.png", "icon0.png"]);
        
        game.onload = function ():Void 
        {
            var splashScene = new SplashSceneHx(new SplashScene());
            game.pushScene(splashScene);
            
            var sprite = new SpriteHx(new Sprite(32, 32));
            sprite.x = 160;
            sprite.y = 160;
            sprite.frame = [0, 0, 1, 1, 2, 2, 3, 3];
            sprite.image = game.assets.get("chara1.png");
            
            var scoreLabel = new ScoreLabelHx(new ScoreLabel(10, 0));
            
            var timeLabel = new TimeLabelHx(new TimeLabel(10, 20));
            timeLabel.time = 30;
            
            var bar = new BarHx(new Bar(10, 40));
            bar.maxvalue = 100;
            bar.value = 100;
            
            var board = new VirtualMapHx(new VirtualMap(16, 16));
            board.width = 320;
            board.height = 320;

            var icons = [];
            for(i in 0...20){
                var icon = new SpriteHx(new Sprite(16, 16));
                icon.frame = [10];
                icon.image = game.assets.get("icon0.png");
                var meshedIcon = board.addChildOnMesh(icon);
                meshedIcon.mx = i;
                meshedIcon.my = i;
                icons.push(icon);
            }
            
            var scene = new SceneHx(new Scene());
            scene.backgroundColor = "#eeeeeeee";
            scene.addChild(sprite);
            scene.addChild(scoreLabel);
            scene.addChild(timeLabel);
            scene.addChild(bar);
            scene.addChild(board);
            
            scene.addEventListener(
                EventType.TOUCH_START,
                function (e):Void 
                {
                    sprite.x = e.x;
                    sprite.y = e.y;
                    scoreLabel.score += 10;
                }
            );
            
            // 毎フレーム実行する処理
            scene.addEventListener(
                EventType.ENTER_FRAME,
                function (e):Void
                {
                    if(bar.value > 0){
                        bar.value--;
                    }else {
                        bar.value = bar.maxvalue;
                    }
                    
                    if(game.frame % 20 == 0){
                        for (i in 0...20)
                        {
                            untyped icons[i].mx = Std.random(20);
                            untyped icons[i].my = Std.random(20);
                        }
                    }
                }
            );
            
            game.pushScene(scene);
        }
        
        game.start();
    }
}