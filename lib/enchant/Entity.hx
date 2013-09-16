package enchant;

/**
 * ...
 * @author gaya_K
 */

 extern class Entity extends Node
{
    public function new():Void;

    public var compositeOperation:Dynamic;  // todo:
    public var buttonMode:String;
    public var buttonPressed:Bool;

    public var width(default, default):Float;
    public var height(default, default):Float;
    public var backgroundColor(default, default):String;
    public var opacity(default, default):Float;
    public var visible(default, default):Bool;
    public var touchEnabled(default, default):Bool;
    public var scaleX(default, default):Float;
    public var scaleY(default, default):Float;
    public var rotation(default, default):Float;
    public var originX(default, default):Float;
    public var originY(default, default):Float;

    public function intersect(other:{x:Float, y:Float, width:Float, height:Float}):Bool;
    public function within(other:{x:Float, y:Float, width:Float, height:Float}, ?distance:Float):Bool;
    public function scale(x:Float, y:Float):Void;
    public function rotate(deg:Float):Void;
    public function enableCollection():Void;
    public function disableCollection():Void;
}
