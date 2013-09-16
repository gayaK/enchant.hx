package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class Group extends Node
{
    public function new():Void;

    public var childNodes:Array<Node>;

    public var firstChild(default, null):Node;
    public var lastChild(default, null):Node;
    public var rotation(default, default):Float;
    public var scaleX(default, default):Float;
    public var scaleY(default, default):Float;
    public var originX(default, default):Float;
    public var originY(default, default):Float;

    public function addChild(node:Node):Void;
    public function insertBefore(node:Node, reference:Node):Void;
    public function removeChild(node:Node):Void;
}
