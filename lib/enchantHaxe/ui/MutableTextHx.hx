package enchantHaxe.ui;

import enchant.ui.UI;
import enchantHaxe.SpriteHx;

/**
 * ...
 * @author gaya_K
 */

class MutableTextHx extends SpriteHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:MutableText) 
    {
        super(base);
        innerMutableText = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerMutableText(default, null):MutableText;
    
    public var fontSize(get, set):Int;
    private function get_fontSize() return innerMutableText.fontSize;
    private function set_fontSize(v) return (innerMutableText.fontSize = v);
    
    public var widthItemNum(get, set):Int;
    private function get_widthItemNum() return innerMutableText.widthItemNum;
    private function set_widthItemNum(v) return (innerMutableText.widthItemNum = v);

    /**
     * ラベルの内容
     */
    public var text(get, set):String;
    private function get_text() return innerMutableText.text;
    private function set_text(v) return (innerMutableText.text = v);

    public var row(get, set):Int;
    private function get_row() return innerMutableText.row;
    private function set_row(v) return (innerMutableText.row = v);

    /**
     * ラベルの内容を書き換える関数
     * @param txt
     */
    public function setText(txt:String):Void
    {
        innerMutableText.setText(txt);
    }
}