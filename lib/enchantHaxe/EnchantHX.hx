package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */
class Enchant
{
    static public inline function exportAll():Void {
        untyped __js__("enchant")();
    }

    @:overload(function(modules:Array<String>):Void{}) 
    static public inline function export(modules:String):Void {
        untyped __js__("enchant")(modules);
    }
}

class Easing
{
    // todo:
}

interface IEntity 
{
    var x:Float;
    var y:Float;
    var width:Float;
    var height:Float;
}
