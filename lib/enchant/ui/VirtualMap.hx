package enchant.ui;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

extern class VirtualMap extends Group
{
    public function new(meshWidth:Float, meshHeight:Float):Void;

    public var meshWidth:Float;
    public var meshHeight:Float;

    public var width:Float;
    public var height:Float;

    public function bind(obj:Node):Void;
}
