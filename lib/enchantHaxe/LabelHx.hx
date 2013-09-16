package enchantHaxe;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

class LabelHx extends EntityHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Label) 
    {
        super(base);
        innerLabel = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerLabel(default, null):Label;
    
    /**
     * 表示するテキスト.
     */
    public var text(get, set):String;
    private function get_text() return innerLabel.text;
    private function set_text(v) return (innerLabel.text = v);
    
    /**
     * テキストの水平位置の指定.
     * CSSの'text-align'プロパティと同様の形式で指定できる.
     */
    public var textAlign(get, set):String;
    private function get_textAlign() return innerLabel.textAlign;
    private function set_textAlign(v) return (innerLabel.textAlign = v);

    /**
     * フォントの指定.
     * CSSの'font'プロパティと同様の形式で指定できる.
     */
    public var font(get, set):String;
    private function get_font() return innerLabel.font;
    private function set_font(v) return (innerLabel.font = v);

    /**
     * 文字色の指定.
     * CSSの'color'プロパティと同様の形式で指定できる.
     */
    public var color(get, set):String;
    private function get_color() return innerLabel.color;
    private function set_color(v) return (innerLabel.color = v);
}