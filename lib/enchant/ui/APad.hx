package enchant.ui;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class APad extends Group
{
    public function new(mode:String):Void;

    public var outside:Sprite;
    public var inside:Sprite;
    public var isTouched:Bool;
    public var vx:Float;
    public var vy:Float;
    public var rad:Float;
    public var dist:Float;
    public var mode:String;

    public function cvsRender(ctx:Dynamic):Void;    // todo:
    public function domRender(element:Dynamic):Void;    // todo:
}
