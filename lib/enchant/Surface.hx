package enchant;

import js.html.*;
import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class Surface extends EventTarget
{
    public function new(widht:Float, height:Float):Void;

    public var width:Float;
    public var height:Float;
    public var context:CanvasRenderingContext2D;

    public static function load(src:String, callBack:Void->Void):Void;

    public function getPixel(x:Int , y:Int):Array<Int>;
    public function setPixel(x:Int, y:Int, r:Int, g:Int, b:Int, a:Int):Void;
    public function clear():Void;
    public function draw(image:Surface):Void;
    public function clone():Surface;
    public function toDataURL():String;
}
