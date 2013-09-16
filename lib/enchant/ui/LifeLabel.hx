package enchant.ui;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class LifeLabel extends Group
{
    public function new(x:Float, y:Float, maxLife:Int):Void;

    public var label:MutableText;
    public var heart:Array<Sprite>;

    public var life(default, default):Float;
}
