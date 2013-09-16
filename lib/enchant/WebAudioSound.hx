package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class WebAudioSound extends EventTarget
{
    public function new():Void;

    public var src:Dynamic;     // todo:
    public var buffer:Dynamic;  // todo:
    public var connectTarget:Dynamic;   // todo:

    public var dulation(default, null):Float;
    public var vollume(default, default):Float;
    public var currentTime(default, default):Int;

    public static function load(src:String, type:String, callBack:Void->Void):Void;

    public function play(dup:Dynamic):Void; // todo:
    public function pause():Void;
    public function stop():Void;
    public function close():Void;
}
