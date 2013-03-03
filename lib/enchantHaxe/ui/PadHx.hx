package enchantHaxe.ui;

import enchant.ui.UI;
import enchantHaxe.SpriteHx;

/**
 * ...
 * @author gaya_K
 */

class PadHx extends SpriteHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Pad) 
    {
        super(base);
        innerPad = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerPad(default, null):Pad;
    
    public var input(get, null):Dynamic;
    private function get_input() return innerPad.input;
}