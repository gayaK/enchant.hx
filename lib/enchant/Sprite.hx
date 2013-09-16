package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class Sprite extends Entity
{
    public function new(width:Int, height:Int):Void;

    public var image(default, default):Surface;
    public var frame(default, default):Int;
}
