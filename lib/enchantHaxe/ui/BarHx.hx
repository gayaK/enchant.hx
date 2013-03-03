package enchantHaxe.ui;

import enchant.ui.UI;
import enchantHaxe.SpriteHx;

/**
 * ...
 * @author gaya_K
 */

class BarHx extends SpriteHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Bar) 
    {
        super(base);
        innerBar = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerBar(default, null):Bar;

    public var value(get, set):Float;
    private function get_value() return innerBar.value;
    private function set_value(v) return (innerBar.value = v);

    public var easing(get, set):Float;
    private function get_easing() return innerBar.easing;
    private function set_easing(v) return (innerBar.easing = v);

    /**
     * バーの向き ('right' or 'left')
     * @default 'right'
     */
    public var direction(get, set):String;  // todo:
     private function get_direction() return innerBar.direction;
    private function set_direction(v) return (innerBar.direction = v);

    public var maxvalue(get, set):Float;
    private function get_maxvalue() return innerBar.maxvalue;
    private function set_maxvalue(v) return (innerBar.maxvalue = v);
}