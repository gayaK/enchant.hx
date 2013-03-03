package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

class EntityHx extends NodeHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Entity) 
    {
        super(base);
        innerEntity = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerEntity(default, null):Entity;
    
    /**
     * Entityにボタンの機能を設定する.
     * Entityに対するタッチ, クリックをleft, right, up, down, a, bいずれかの
     * ボタン入力として割り当てる.
     */
    public var buttonMode(get, set):String;
    private function get_buttonMode() return innerEntity.buttonMode;
    private function set_buttonMode(v) return (innerEntity.buttonMode = v);
    
    /**
     * Entityが押されているかどうか.
     */
    public var buttonPressed(get, set):Bool;
    private function get_buttonPressed() return innerEntity.buttonPressed;
    private function set_buttonPressed(v) return (innerEntity.buttonPressed = v);

    /**
     * Entityの横幅.
     */
    public var width(get, set):Float;
    private function get_width() return innerEntity.width;
    private function set_width(v) return (innerEntity.width = v);
     
    /**
     * Entityの高さ.
     */
    public var height(get, set):Float;
    private function get_height() return innerEntity.height;
    private function set_height(v) return (innerEntity.height = v);

    /**
     * Entityの背景色.
     * CSSの'color'プロパティと同様の形式で指定できる.
     */
    public var backgroundColor(get, set):String;
    private function get_backgroundColor() return innerEntity.backgroundColor;
    private function set_backgroundColor(v) return (innerEntity.backgroundColor = v);

    /**
     * Entityの透明度.
     * 0から1までの値を設定する(0が完全な透明, 1が完全な不透明).
     */
    public var opacity(get, set):Float;
    private function get_opacity() return innerEntity.opacity;
    private function set_opacity(v) return (innerEntity.opacity = v);

    /**
     * Entityを表示するかどうかを指定する.
     */
    public var visible(get, set):Bool;
    private function get_visible() return innerEntity.visible;
    private function set_visible(v) return (innerEntity.visible = v);

    /**
     * Entityのタッチを有効にするかどうかを指定する.
     */
    public var touchEnabled(get, set):Bool;
    private function get_touchEnabled() return innerEntity.touchEnabled;
    private function set_touchEnabled(v) return (innerEntity.touchEnabled = v);

    /**
     * Spriteのx軸方向の倍率.
     */
    public var scaleX(get, set):Float;
    private function get_scaleX() return innerEntity.scaleX;
    private function set_scaleX(v) return (innerEntity.scaleX = v);

    /**
     * Spriteのy軸方向の倍率.
     */
    public var scaleY(get, set):Float;
    private function get_scaleY() return innerEntity.scaleY;
    private function set_scaleY(v) return (innerEntity.scaleY = v);

    /**
     * Spriteの回転角 (度数法).
     */
    public var rotation(get, set):Float;
    private function get_rotation() return innerEntity.rotation;
    private function set_rotation(v) return (innerEntity.rotation = v);

    /**
     * 回転・拡大縮小の基準点のX座標
     */
    public var originX(get, set):Float;
    private function get_originX() return innerEntity.originX;
    private function set_originX(v) return (innerEntity.originX = v);

    /**
     * 回転・拡大縮小の基準点のY座標
     */
    public var originY(get, set):Float;
    private function get_originY() return innerEntity.originY;
    private function set_originY(v) return (innerEntity.originY = v);

    /**
     * Entityの矩形が交差しているかどうかにより衝突判定を行う.
     * @param other 衝突判定を行うEntityなどx, y, width, heightプロパティを持ったObject.
     * @return 衝突判定の結果.
     */
    public function intersect(other: { x:Float, y:Float, width:Float, height:Float }):Bool
    {
        return innerEntity.intersect(other);
    }
    
    /**
     * Entityの中心点どうしの距離により衝突判定を行う.
     * @param other 衝突判定を行うEntityなどx, y, width, heightプロパティを持ったObject.
     * @param [distance] 衝突したと見なす最大の距離. デフォルト値は二つのEntityの横幅と高さの平均.
     * @return 衝突判定の結果.
     */
    public function within(other: { x:Float, y:Float, width:Float, height:Float }, ?distance:Float):Bool
    {
        return innerEntity.within(other, distance);
    }
    
    /**
     * Spriteを拡大縮小する.
     * @param x 拡大するx軸方向の倍率.
     * @param [y] 拡大するy軸方向の倍率.
     */
    public function scale(x:Float, y:Float):Void
    {
        innerEntity.scale(x, y);
    }
    
    /**
     * Spriteを回転する.
     * @param deg 回転する角度 (度数法).
     */
    public function rotate(deg:Float):Void
    {
        innerEntity.rotate(deg);
    }
    
    /**
     * インスタンスをコレクションの対象にする.
     * デフォルトで呼び出される.
     */
    public function enableCollection():Void
    {
        innerEntity.enableCollection();
    }
    
    /**
     * インスタンスをコレクションの対象から除外する.
     */
    public function disableCollection():Void
    {
        innerEntity.disableCollection();
    }
}