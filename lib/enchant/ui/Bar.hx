package enchant.ui;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class Bar extends Sprite
{
    public function new(x:Float, y:Float):Void;

    public var value:Float;
    public var easing:Float;

    public var direction(default, default):String;
    public var maxvalue(default, default):Float;
}
