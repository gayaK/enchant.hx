package ;

import js.Lib;
import enchant.*;
import enchant.ui.*;
import enchant.nineleap.*;
import enchantHaxe.*;
import enchantHaxe.ui.*;
import enchantHaxe.nineleap.*;

using enchantHaxe.HxConverter;

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
        
        var game = new enchant.nineleap.Core(320,320).toNineleapCoreHx();
        game.fps = 15;
        game.preload(["chara1.png", "icon0.png"]);
        
        game.onload = function ():Void 
        {
            var splashScene = new SplashScene().toSplashSceneHx();
            game.pushScene(splashScene);
            
            var sprite = new Sprite(32, 32).toSpriteHx();
            sprite.x = 160;
            sprite.y = 160;
            sprite.setFrames([0, 0, 1, 1, 2, 2, 3, 3]);
            sprite.image = game.assets.get("chara1.png");
            sprite.tl
                .fadeOut(1)
                .fadeIn(50);
            
            var scoreLabel = new ScoreLabel(10, 0).toScoreLabelHx();
            
            var timeLabel = new TimeLabel(10, 20).toTimeLabelHx();
            timeLabel.time = 30;
            
            var bar = new Bar(10, 40).toBarHx();
            bar.maxvalue = 100;
            bar.value = 100;
            
            var board = new VirtualMap(16, 16).toVirtualMapHx();
            board.width = 320;
            board.height = 320;

            var icons = [];
            for (i in 0...20)
            {
                var icon = new Sprite(16, 16).toSpriteHx();
                icon.frame = 10;
                icon.image = game.assets.get("icon0.png");
                var meshedIcon = board.addChildOnMesh(icon);
                meshedIcon.mx = i;
                meshedIcon.my = i;
                icons.push(meshedIcon);
            }
            
            var scene = new Scene().toSceneHx();
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
                    if (bar.value > 0)
                    {
                        bar.value--;
                    }
                    else
                    {
                        bar.value = bar.maxvalue;
                    }
                    
                    if (game.frame % 20 == 0)
                    {
                        for (i in 0...20)
                        {
                            icons[i].mx = Std.random(20);
                            icons[i].my = Std.random(20);
                        }
                    }
                }
            );
            
            game.pushScene(scene);
        }
        
        game.start();
    }
}