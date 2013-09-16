package enchantHaxe.ui;

import enchant.ui.*;
import enchantHaxe.*;

/**
 * ...
 * @author gaya_K
 */

class VirtualMapHx extends GroupHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:VirtualMap) 
    {
        super(base);
        innerVirtualMap = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerVirtualMap(default, null):VirtualMap;

    public var meshWidth:Float;
    private function get_meshWidth() return innerVirtualMap.meshWidth;
    private function set_meshWidth(v) return (innerVirtualMap.meshWidth = v);
    
    public var meshHeight:Float;
    private function get_meshHeight() return innerVirtualMap.meshHeight;
    private function set_meshHeight(v) return (innerVirtualMap.meshHeight = v);

    public var width:Float;
    private function get_width() return innerVirtualMap.width;
    private function set_width(v) return (innerVirtualMap.width = v);
    
    public var height:Float;
    private function get_height() return innerVirtualMap.height;
    private function set_height(v) return (innerVirtualMap.height = v);
    
    public function addChildOnMesh<T:NodeHx>(node:T):VirtualNode<T>
    {
        innerVirtualMap.addChild(node.innerNode);
        return new VirtualNode<T>(node);
    }
}