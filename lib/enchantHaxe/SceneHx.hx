package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

class SceneHx extends GroupHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Scene) 
    {
        super(base);
        innerScene = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerScene(default, null):Scene;
}