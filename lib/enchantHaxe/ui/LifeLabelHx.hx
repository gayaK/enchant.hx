package enchantHaxe.ui;

import enchant.EnchantJS;
import enchant.ui.UI;
import enchantHaxe.GroupHx;
import enchantHaxe.SpriteHx;

/**
 * ...
 * @author gaya_K
 */

class LifeLabelHx extends GroupHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:LifeLabel) 
    {
        super(base);
        innerLifeLabel = base;
        heart = new ExternalArray<SpriteHx, Sprite>(
            function() return innerLifeLabel.heart,
            function(v) return new SpriteHx(v),
            function(v) return v.innerSprite
        );
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerLifeLabel(default, null):LifeLabel;

    public var label(get, set):MutableText;
    private function get_label() return innerLifeLabel.label;
    private function set_label(v) return (innerLifeLabel.label = v);
    
    public var heart(default, null):ExternalArray<SpriteHx, Sprite>;

    /**
     * 残りライフの数
     */
    public var life(get, set):Float;
    private function get_life() return innerLifeLabel.life;
    private function set_life(v) return (innerLifeLabel.life = v);
}