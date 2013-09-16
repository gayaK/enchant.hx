package enchant;

/**
 * ...
 * @author gaya_K
 */

 extern class Core extends EventTarget
{
    public function new(width:Float, height:Float):Void;

    public static var instance:Core;

    public var width:Float;
    public var height:Float;
    public var scale:Float;
    public var fps:Int;
    public var frame:Int;
    public var ready:Bool;
    public var running:Bool;
    public var assets:Dynamic/*Hash<Surface>*/;
    public var currentScene:Scene;
    public var rootScene:Scene;
    public var loadingScene:Scene;
    public var input:Dynamic/*Hash<Bool>*/;
    public var onload:Void->Void;

    public var actualFps(default, null):Int;

    public static function findExt(path:String):String;

    public function preload(assets:Array<String>):Void;
    public function load(src:String, callBack:Void->Void):Void;
    public function start():Void;
    public function debug():Void;
    public function stop():Void;
    public function pause():Void;
    public function resume():Void;
    public function pushScene(scene:Scene):Scene;
    public function popScene():Scene;
    public function replaceScene(scene:Scene):Scene;
    public function removeScene(scene:Scene):Scene;
    public function keybind(key:Int, button:String):Void;
    public function keyunbind(key:Int):Void;
    public function getElapsedTime():Int;
}
