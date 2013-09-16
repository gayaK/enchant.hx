package enchant.ui;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class Button extends Entity
{
    public function new(text:String, theme:String, height:Float, width:Float):Void;

    public var pressed:Bool;
    public var theme:String;

    public var text(default, default):String;
    public var size(default, default):Int;
    public var font(default, default):String;
    public var color(default, default):String;

    public static var DEFAULT_THEME:Dynamic;    // todo:

    public static function theme2css(theme:String):Dynamic; // todo:
}
