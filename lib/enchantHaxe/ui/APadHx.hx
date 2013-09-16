package enchantHaxe.ui;

import enchant.ui.*;
import enchantHaxe.*;

/**
 * ...
 * @author gaya_K
 */

class APadHx extends GroupHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:APad) 
    {
        super(base);
        innerAPad = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerAPad(default, null):APad;
    
    public var outside(get, set):SpriteHx;
    private function get_outside() return innerAPad.outside;
    private function set_outside(v) return (innerAPad.outside = v);
    
    public var inside(get, set):SpriteHx;
    private function get_inside() return innerAPad.inside;
    private function set_inside(v) return (innerAPad.inside = v);
    
    /**
     * タッチされているかどうか
     */
    public var isTouched(get, null):Bool;
    private function get_isTouched() return innerAPad.isTouched;
    
    /**
     * 入力ベクトルのx方向の大きさ
     */
    public var vx(get, null):Float;
    private function get_vx() return innerAPad.vx;
    
    /**
     * 入力ベクトルのy方向の大きさ
     */
    public var vy(get, null):Float;
    private function get_vy() return innerAPad.vy;
    
    /**
     * 入力ベクトルの極座標表示
     */
    public var rad(get, null):Float;
    private function get_rad() return innerAPad.rad;
    
    /**
     * 入力ベクトルの極座標表示
     */
    public var dist(get, null):Float;
    private function get_dist() return innerAPad.dist;
    
    public var mode(get, set):String;
    private function get_mode() return innerAPad.mode;
    private function set_mode(v) return (innerAPad.mode = v);
}