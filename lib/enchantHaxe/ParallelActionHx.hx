package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */

class ParallelActionHx extends ActionHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:ParallelAction) 
    {
        super(base);
        innerParallelAction = base;
        actions = new ExternalArray<ActionHx, Action>(
            function() return innerParallelAction.actions,
            function(v) return new ActionHx(v),
            function(v) return v.innerAction
        );
        endedActions = new ExternalArray<ActionHx, Action>(
            function() return innerParallelAction.endedActions,
            function(v) return new ActionHx(v),
            function(v) return v.innerAction
        );
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerParallelAction(default, null):ParallelAction;
    
    public var actions(default, null):ExternalArray<ActionHx, Action>;
    
    public var endedActions(default, null):ExternalArray<ActionHx, Action>;
}