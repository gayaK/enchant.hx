package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */
class EnchantHx
{
    static public inline function exportAll():Void {
        untyped __js__("enchant")();
    }

    @:overload(function(modules:Array<String>):Void{}) 
    static public inline function export(modules:String):Void {
        untyped __js__("enchant")(modules);
    }
}
