package enchant.ui;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class ScoreLabel extends MutableText
{
    public function new(x:Float, y:Float):Void;

    public var easing:Float;
    public var label:String;

    public var score(default, default):Float;
}
