package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class DOMSound extends EventTarget
{
    public function new():Void;

    public var furation:Int;

    public var currentTime(default, default):Int;
    public var vollume(default, default):Float;

    public static function load(src:String, type:String, callBack:Void->Void):Void;

    public function play():Void;
    public function pause():Void;
    public function stop():Void;
    public function close():Void;
}
