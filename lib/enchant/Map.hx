package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class Map extends Entity
{
    public function new(tileWidth:Float, tileHeight:Float):Void;

    public var collisionData:Array<Array<Int>>;

    public var image(default, default):Surface;
    public var tileWidth(default, default):Float;
    public var tileHeight(default, default):Float;

    @:overload(function(data:Array<Array<Array<Int>>>):Void{})
    public function loadData(data:Array<Array<Int>>):Void;
    public function checkTile(x:Float, y:Float):Dynamic;    // todo:
    public function hitTest(x:Float, y:Float):Bool;
    public function cvsRender(ctx:Dynamic):Void;    // todo:
    public function domRender(element:Dynamic):Void;    // todo:
}
