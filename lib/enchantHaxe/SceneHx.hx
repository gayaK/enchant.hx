package enchantHaxe;

import enchant.*;

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

    /**
     * Sceneの横幅.
     */
    public var width(get, null):Float;
    private function get_width() return innerScene.width;
    
    /**
     * Sceneの高さ.
     */
    public var height(get, null):Float;
    private function get_height() return innerScene.height;

    /**
     * Sceneの背景色.
     * CSSの'color'プロパティと同様の形式で指定できる.
     */
    public var backgroundColor(get, set):String;
    private function get_backgroundColor() return innerScene.backgroundColor;
    private function set_backgroundColor(v) return (innerScene.backgroundColor = v);
}