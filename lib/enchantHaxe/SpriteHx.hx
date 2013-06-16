package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

class SpriteHx extends EntityHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Sprite):Void
    {
        super(base);
        innerSprite = base;
    }

    /**
     * 内包するオブジェクト.
     */
    public var innerSprite(default, null):Sprite;

    /**
     * Spriteで表示する画像.
     */
    public var image(get, set):SurfaceHx;
    private function get_image() return new SurfaceHx(innerSprite.image);
    private function set_image(v:SurfaceHx)
    {
        innerSprite.image = v.innerSurface;
        return v;
    }

    /**
     * 表示するフレームのインデックス.
     * Spriteと同じ横幅と高さを持ったフレームが{@link enchant.Sprite#image}プロパティの画像に左上から順に
     * 配列されていると見て, 0から始まるインデックスを指定することでフレームを切り替える.
     *
     * 数値の配列が指定された場合、それらを毎フレーム順に切り替える。
     * ループするが、null値が含まれているとそこでループをストップする。
     */
    public var frame(get, set):Int;
    private function get_frame() return innerSprite.frame;
    private function set_frame(v) return (innerSprite.frame = v);

    public function setFrames(frames:Array<Int>)
    {
        untyped innerSprite.frame = frames;
    }
}