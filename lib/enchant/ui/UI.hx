package enchant.ui;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

extern class Pad extends Sprite
{
    public function new():Void;
    
    public var input:Dynamic/*Hash<Bool>*/;
}

extern class APad extends Group
{
    public function new(mode:String):Void;
    
    public var outside:Sprite;
    public var inside:Sprite;
    public var isTouched:Bool;
    public var vx:Float;
    public var vy:Float;
    public var rad:Float;
    public var dist:Float;
    public var mode:String;

    public function cvsRender(ctx:Dynamic):Void;    // todo:
    public function domRender(element:Dynamic):Void;    // todo:
}

extern class Button extends Entity 
{
    public function new(text:String, theme:String, height:Float, width:Float):Void;
    
    public var pressed:Bool;
    public var theme:String;
    
    public var text(default, default):String;
    public var size(default, default):Int;
    public var font(default, default):String;
    public var color(default, default):String;
    
    public static var DEFAULT_THEME:Dynamic;    // todo:
    
    public static function theme2css(theme:String):Dynamic; // todo:
}

extern class MutableText extends Sprite
{
    public function new(x:Float, y:Float, width:Float):Void;
    
    public var fontSize:Int;
    public var widthItemNum:Int;
    
    public var text(default, default):String;
    public var row(default, default):Int;
    
    public function setText(txt:String):Void;
}

extern class ScoreLabel extends MutableText
{
    // todo:
}

extern class TimeLabel extends MutableText
{
    // todo:
}

extern class LifeLabel extends Group
{
    // todo:
}

extern class Bar extends Sprite
{
    // todo:
}

extern class VirtualMap extends Group
{
    // todo:
}
