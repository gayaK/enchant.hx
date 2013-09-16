package enchant;

/**
 * ...
 * @author gaya_K
 */

 extern class Node extends EventTarget
{
    public function new():Void;

    public var age:Int;
    public var parentNode:Group;
    public var scene:Scene;
    public var tl:Timeline;

    public var x(default, default):Float;
    public var y(default, default):Float;

    public function moveTo(x:Float, y:Float):Void;
    public function moveBy(x:Float, y:Float):Void;
    public function remove():Void;
}
