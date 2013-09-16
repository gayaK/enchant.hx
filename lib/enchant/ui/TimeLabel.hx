package enchant.ui;

/**
 * ...
 * @author gaya_K
 */

extern class TimeLabel extends MutableText
{
    public function new(x:Float, y:Float, countType:String = "countdown"):Void;

    public var label:String;

    public var time(default, default):Float;
}
