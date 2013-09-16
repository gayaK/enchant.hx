package enchantHaxe.ui;

import enchantHaxe.*;

/**
 * ...
 * @author gaya_K
 */

class VirtualNode<T:NodeHx> extends NodeHx
{
    public function new(node:T) 
    {
        super(node.innerNode);
        innerNodeHx = node;
    }
    
    public var innerNodeHx(default, null):NodeHx;
    
    public var mx(get, set):Int;
    private function get_mx()
    {
        return untyped innerNodeHx.innerNode.mx;
    }
    private function set_mx(v)
    {
        return untyped (innerNodeHx.innerNode.mx = v);
    }
    
    public var my(get, set):Int;
    private function get_my()
    {
        return untyped innerNodeHx.innerNode.my;
    }
    private function set_my(v)
    {
        return untyped (innerNodeHx.innerNode.my = v);
    }
}