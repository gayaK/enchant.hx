package enchantHaxe;

import enchant.*;
using enchantHaxe.HxConverter;

/**
 * ...
 * @author gaya_K
 */

class ActionHx extends EventTargetHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Action) 
    {
        super(base);
        innerAction = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerAction(default, null):Action;
    
    public var time(get, null):Int;
    private function get_time() return innerAction.time;
    
    public var frame(get, null):Int;
    private function get_frame() return innerAction.frame;
    
    public var timeline(get, null):TimelineHx;
    private function get_timeline() return innerAction.timeline.toTimelineHx();
    
    public var node(get, null):NodeHx;
    private function get_node() return innerAction.node.toNodeHx();
}