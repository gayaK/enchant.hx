package enchantHaxe.ui;

import enchant.ui.*;
import enchantHaxe.*;

/**
 * ...
 * @author gaya_K
 */

class ButtonHx extends EntityHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Button) 
    {
        super(base);
        innerButton = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerButton(default, null):Button;
    
    public var pressed(get, set):Bool;
    private function get_pressed() return innerButton.pressed;
    private function set_pressed(v) return (innerButton.pressed = v);
    
    public var theme(get, set):String;
    private function get_theme() return innerButton.theme;
    private function set_theme(v) return (innerButton.theme = v);

    /**
     * 表示するテキスト
     */
    public var text(get, set):String;
    private function get_text() return innerButton.text;
    private function set_text(v) return (innerButton.text = v);

    /**
     * フォントサイズ
     */
    public var size(get, set):Int;
    private function get_size() return innerButton.size;
    private function set_size(v) return (innerButton.size = v);

    /**
     * フォントの指定
     */
    public var font(get, set):String;
    private function get_font() return innerButton.font;
    private function set_font(v) return (innerButton.font = v);

    /**
     * Text color settings.
     * CSS 'color' can be set to same format as properties.
     */
    public var color(get, set):String;
    private function get_color() return innerButton.color;
    private function set_color(v) return (innerButton.color = v);
}