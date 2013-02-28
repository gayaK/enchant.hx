package ;

import js.Lib;
import enchant.EnchantJS;
import enchant.nineleap.NineLeap;
import enchant.ui.UI;
import enchantHaxe.EnchantHx;
import enchantHaxe.GameHx;

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
        
        var game = new GameHx(320, 320);
        game.fps = 15;
        game.preload(["chara1.png", "icon0.png"]);
        
        game.onload = function ():Void 
        {
            var splashScene = new SplashScene();
            game.pushScene(splashScene);
            
            var sprite = new Sprite(32, 32);
            sprite.x = 160;
            sprite.y = 160;
            sprite.frame = [0, 0, 1, 1, 2, 2, 3, 3];
            sprite.image = untyped __js__ ('game.assets["chara1.png"]');
            
            var scoreLabel = new ScoreLabel(10, 0);
            
            var timeLabel = new TimeLabel(10, 20);
            timeLabel.time = 30;
            
            var bar = new Bar(10, 40);
            bar.maxvalue = 100;
            bar.value = 100;
            
            var board = new VirtualMap(16, 16);
            board.width = 320;
            board.height = 320;

            var icons = [];
            for(i in 0...20){
                var icon = new Sprite(16, 16);
                icon.frame = [10];
                icon.image = untyped __js__ ('game.assets["icon0.png"]');
                board.addChild(icon);
                untyped __js__ ("icon.mx = i");
                untyped __js__ ("icon.my = i");
                icons.push(icon);
            }
            
            var scene = new Scene();
            scene.backgroundColor = "#eeeeeeee";
            scene.addChild(sprite);
            scene.addChild(scoreLabel);
            scene.addChild(timeLabel);
            scene.addChild(bar);
            scene.addChild(board);
            
            scene.addEventListener(
                Event.TOUCH_START,
                function (e):Void 
                {
                    sprite.x = e.x;
                    sprite.y = e.y;
                    scoreLabel.score += 10;
                }
            );
            
            // 毎フレーム実行する処理
            scene.addEventListener(
                Event.ENTER_FRAME,
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