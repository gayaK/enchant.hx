package enchantHaxe.ui;

import enchant.ui.*;

/**
 * ...
 * @author gaya_K
 */

class ScoreLabelHx extends MutableTextHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:ScoreLabel) 
    {
        super(base);
        innerScoreLabel = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerScoreLabel(default, null):ScoreLabel;
    
    public var easing(get, set):Float;
    private function get_easing() return innerScoreLabel.easing;
    private function set_easing(v) return (innerScoreLabel.easing = v);
    
    public var label(get, set):String;
    private function get_label() return innerScoreLabel.label;
    private function set_label(v) return (innerScoreLabel.label = v);

    /**
     * スコア
     */
    public var score(get, set):Float;
    private function get_score() return innerScoreLabel.score;
    private function set_score(v) return (innerScoreLabel.score = v);
}