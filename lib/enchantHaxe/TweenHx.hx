package enchantHaxe;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

class TweenHx extends ActionHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Tween) 
    {
        super(base);
        innerTween = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerTween(default, null):Tween;
    
    public var easing(get, null):EasingFunction;
    private function get_easing() return innerTween.easing;
}