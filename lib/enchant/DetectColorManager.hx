package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class DetectColorManager
{
    public function new(reso:Int, max:Int):Void;

    public var reference:Array<Sprite>;
    public var colorResolution:Int;
    public var max:Int;
    public var capacity:Int;

    public function attachDetectColor(sprite:Sprite):Array<Int>;
    public function detachDetectColor(sprite:Sprite):Void;
    public function getSpriteByColor(color:Array<Int>):Sprite;
}
