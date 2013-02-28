package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

class SurfaceHx extends EventTargetHx
{
    public function new(base:Surface) 
    {
        super(base);
        innerSurface = base;
    }
    
    public var innerSurface(default, null):Surface;
}