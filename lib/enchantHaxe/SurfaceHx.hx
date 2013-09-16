package enchantHaxe;

import enchant.*;
import js.html.*;

/**
 * ...
 * @author gaya_K
 */

class SurfaceHx extends EventTargetHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Surface) 
    {
        super(base);
        innerSurface = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerSurface(default, null):Surface;
    
    /**
     * Surfaceの横幅.
     */
    public var width(get, set):Float;
    private function get_width() return innerSurface.width;
    private function set_width(v) return (innerSurface.width = v);

    /**
     * Surfaceの高さ.
     */
    public var height(get, set):Float;
    private function get_height() return innerSurface.height;
    private function set_height(v) return (innerSurface.height = v);

    /**
     * Surfaceの描画コンテクスト.
     */
    public var context(get, set):CanvasRenderingContext2D;
    private function get_context() return innerSurface.context;
    private function set_context(v) return (innerSurface.context = v);

    public static function load(src:String, callBack:Void->Void):Void
    {
        Surface.load(src, callBack);
    }
    
    /**
     * Surfaceから1ピクセル取得する.
     * @param x 取得するピクセルのx座標.
     * @param y 取得するピクセルのy座標.
     * @return ピクセルの情報を[r, g, b, a]の形式で持つ配列.
     */
    public function getPixel(x:Int , y:Int):Array<Int>
    {
        return innerSurface.getPixel(x, y);
    }
    
    /**
     * Surfaceに1ピクセル設定する.
     * @param x 設定するピクセルのx座標.
     * @param y 設定するピクセルのy座標.
     * @param r 設定するピクセルのrの値.
     * @param g 設定するピクセルのgの値.
     * @param b 設定するピクセルのbの値.
     * @param a 設定するピクセルの透明度.
     */
    public function setPixel(x:Int, y:Int, r:Int, g:Int, b:Int, a:Int):Void
    {
        innerSurface.setPixel(x, y, r, g, b, a);
    }
    
    /**
     * Surfaceの全ピクセルをクリアし透明度0の黒に設定する.
     */
    public function clear():Void
    {
        innerSurface.clear();
    }
    
    /**
     * Surfaceに対して引数で指定されたSurfaceを描画する.
     * @param image 描画に用いるSurface.
     */
    public function draw(image:SurfaceHx):Void
    {
        innerSurface.draw(image.innerSurface);
    }
    
    /**
     * Surfaceを複製する.
     * @return 複製されたSurface.
     */
    public function clone():SurfaceHx
    {
        return new SurfaceHx(innerSurface.clone());
    }
    
    /**
     * SurfaceからdataスキームのURLを生成する.
     * @return Surfaceを表すdataスキームのURL.
     */
    public function toDataURL():String
    {
        return innerSurface.toDataURL();
    }
}