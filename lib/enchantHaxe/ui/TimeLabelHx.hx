package enchantHaxe.ui;

import enchant.ui.*;

/**
 * ...
 * @author gaya_K
 */

class TimeLabelHx extends MutableTextHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:TimeLabel) 
    {
        super(base);
        innerTimeLabel = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerTimeLabel(default, null):TimeLabel;

    public var label(get, set):String;
    private function get_label() return innerTimeLabel.label;
    private function set_label(v) return (innerTimeLabel.label = v);

    /**
     * 残り時間
     */
    public var time(get, set):Float;
    private function get_time() return innerTimeLabel.time;
    private function set_time(v) return (innerTimeLabel.time = v);
}