package enchantHaxe;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

class GroupHx extends NodeHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Group) 
    {
        super(base);
        innerGroup = base;
        childNodes = new ExternalArray<NodeHx, Node>(
            function() return innerGroup.childNodes,
            function(v) return new NodeHx(v),
            function(v) return v.innerNode
        );
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerGroup(default, null):Group;

    /**
     * 子のNode.
     */
    public var childNodes(default, null):ExternalArray<NodeHx, Node>;

    /**
     * 最初の子Node.
     */
    public var firstChild(get, null):NodeHx;
    private function get_firstChild() return new NodeHx(innerGroup.firstChild);

    /**
     * 最後の子Node.
     */
    public var lastChild(get, null):NodeHx;
    private function get_lastChild() return new NodeHx(innerGroup.lastChild);

    /**
    * Groupの回転角 (度数法).
     */
    public var rotation(get, set):Float;
    private function get_rotation() return innerGroup.rotation;
    private function set_rotation(v) return (innerGroup.rotation = v);

    /**
     * Groupのx軸方向の倍率.
     */
    public var scaleX(get, set):Float;
    private function get_scaleX() return innerGroup.scaleX;
    private function set_scaleX(v) return (innerGroup.scaleX = v);

    /**
     * Groupのy軸方向の倍率.
     */
    public var scaleY(get, set):Float;
    private function get_scaleY() return innerGroup.scaleY;
    private function set_scaleY(v) return (innerGroup.scaleY = v);

    /**
     * 回転・拡大縮小の基準点のX座標
     */
    public var originX(get, set):Float;
    private function get_originX() return innerGroup.originX;
    private function set_originX(v) return (innerGroup.originX = v);

    /**
     * 回転・拡大縮小の基準点のX座標
     */
    public var originY(get, set):Float;
    private function get_originY() return innerGroup.originY;
    private function set_originY(v) return (innerGroup.originY = v);

    /**
     * GroupにNodeを追加する.
     * @param node 追加するNode.
     */
    public function addChild(node:NodeHx):Void
    {
        innerGroup.addChild(node.innerNode);
    }
    
    /**
     * GroupにNodeを挿入する.
     * @param node 挿入するNode.
     * @param reference 挿入位置の前にあるNode.
     */
    public function insertBefore(node:NodeHx, reference:NodeHx):Void
    {
        innerGroup.insertBefore(node.innerNode, reference.innerNode);
    }
    
    /**
     * GroupからNodeを削除する.
     * @param node 削除するNode.
     */
    public function removeChild(node:NodeHx):Void
    {
        innerGroup.removeChild(node.innerNode);
    }
}