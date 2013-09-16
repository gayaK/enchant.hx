package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class Label extends Entity
{
    public function new(text:String):Void;

    public var text:String;
    public var textAlign:String;
    public var font:String;
    public var color:String;

    public function cvsRender(ctx:Dynamic):Void;    // todo:
    public function domRender(element:Dynamic):Void;    // todo:
    public function detectRender(ctx:Dynamic):Void;     // todo:
    public function updateBoundArea():Void;
}
