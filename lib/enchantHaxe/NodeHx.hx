package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

class NodeHx extends EventTargetHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Node):Void 
    {
        super(base);
        innerNode = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerNode(default, null):Node;
    
    /**
     * Node が画面に表示されてから経過したフレーム数.
     */
    public var age(get, null):Int;
    private function get_age() return innerNode.age;
    
    /**
     * Nodeの親Node.
     */
    public var parentNode(get, null):GroupHx;
    private function get_parentNode() return new GroupHx(innerNode.parentNode);
    
    /**
     * Nodeが属しているScene.
     */
    public var scene(get, null):SceneHx;
    private function get_scene() return new SceneHx(innerNode.scene);
    
    /**
     * 
     */
    public var tl(get, null):TimelineHx;
    private function get_tl() return new TimelineHx(innerNode.tl);
    
    /**
     *  Nodeのx座標.
     */
    public var x(get, set):Float;
    private function get_x() return innerNode.x;
    private function set_x(v) return (innerNode.x = v);
    
    /**
     *  Nodeのx座標.
     */
    public var y(get, set):Float;
    private function get_y() return innerNode.y;
    private function set_y(v) return (innerNode.y = v);
    
    /**
     * Nodeを移動する.
     * @param x 移動先のx座標.
     * @param y 移動先のy座標.
     */
    public function moveTo(x:Float, y:Float):Void
    {
        innerNode.moveTo(x, y);
    }
    
    /**
     * Nodeを移動する.
     * @param x 移動するx軸方向の距離.
     * @param y 移動するy軸方向の距離.
     */
    public function moveBy(x:Float, y:Float):Void
    {
        innerNode.moveBy(x, y);
    }
    
    /**
     * ノードを削除する.
     */
    public function remove():Void
    {
        innerNode.remove();
    }
}
