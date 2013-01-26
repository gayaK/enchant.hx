package ;

import js.Lib;
import enchant.EnchantJS;
import enchant.nineleap.NineLeap;
import enchantHaxe.EnchantHX;

/**
 * ...
 * @author gaya_K
 */

class Main 
{
	static function main() 
	{
        // JavaScript の enchant(); に相当
		Enchant.exportAll();
        
        var ev = new enchantHaxe.EnchantHX.Event("");
        
        var game = new Game(320, 320);
        game.fps = 15;
        game.preload(["chara1.png"]);
        
        game.onload = function ():Void 
        {
            var splashScene = new SplashScene();
            game.pushScene(splashScene);
            
            var sprite = new Sprite(32, 32);
            sprite.x = 160;
            sprite.y = 160;
            sprite.frame = [0, 0, 1, 1, 2, 2, 3, 3];
            sprite.image = untyped __js__ ('game.assets["chara1.png"]');
            
            var scene = new Scene();
            scene.backgroundColor = "#eeeeeeee";
            scene.addChild(sprite);
            scene.addEventListener(
                Event.TOUCH_START,
                function (e):Void 
                {
                    sprite.x = e.x;
                    sprite.y = e.y;
                }
            );
            
            game.pushScene(scene);
        }
        
        game.start();
	}
}