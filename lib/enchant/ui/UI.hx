package enchant.ui;

import enchant.EnchantJS;
import js.Lib;

/**
 * ...
 * @author pon_zu
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
    public function new(x:Float, y:Float):Void;

    public var easing:Float;
    public var label:String;

    public var score(default, default):Float;
}

extern class TimeLabel extends MutableText
{	
    public function new(x:Float, y:Float, countType:String = "countdown"):Void;

    public var label:String;

    public var time(default, default):Float;
}

extern class LifeLabel extends Group
{
    public function new(x:Float, y:Float, maxLife:Int):Void;

    public var label:MutableText;
    public var heart:Array<Sprite>;

    public var life(default, default):Float;
}

extern class Bar extends Sprite
{
    public function new(x:Float, y:Float):Void;

    public var value:Float;
    public var easing:Float;

    public var direction(default, dynamic):String;
    public var maxvalue(default, default):Float;
}

extern class VirtualMap extends Group
{
    public function new(meshWidth:Float, meshHeight:Float):Void;

    public var meshWidth:Float;
    public var meshHeight:Float;
	
	public var width:Float;
	public var height:Float;
	
    public override function addChild(obj:Node):Void;
    public override function insertBefore(obj:Node, reference:Node):Void;
    public function bind(obj:Node):Void;
}
