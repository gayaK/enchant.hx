package enchant.ui;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class MutableText extends Sprite
{
    public function new(x:Float, y:Float, width:Float):Void;

    public var fontSize:Int;
    public var widthItemNum:Int;

    public var text(default, default):String;
    public var row(default, default):Int;

    public function setText(txt:String):Void;
}
