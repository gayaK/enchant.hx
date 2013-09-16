package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class Action extends EventTarget
{
    public function new(param:Dynamic):Void;    // todo

    public var time:Int;
    public var frame:Int;
    public var timeline:Timeline;
    public var node:Node;
}
