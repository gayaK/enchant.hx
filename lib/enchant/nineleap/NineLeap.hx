package enchant.nineleap;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

extern class Core extends enchant.EnchantJS.Core
{
    public function new(width:Float, height:Float):Void;
    
    public var startScene:Scene;
    public var endScene:Scene;
    public var scoreQueue:Bool;
    public var started:Bool;
    
    public function loadImage(src:String, callBack:Void->Void):Void;
    public function end(score:String, result:String, img:Surface):Void;
}
 
extern class SplashScene extends Scene
{
    public function new():Void;

    public var image(default, default):Surface;
}