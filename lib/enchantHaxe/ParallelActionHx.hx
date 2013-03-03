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
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerParallelAction(default, null):ParallelAction;
    
    public var actions(get, null):Array<Action>;
    private function get_actions() return innerParallelAction.actions;
    
    public var endedActions(get, null):Array<Action>;
    private function get_endedActions() return innerParallelAction.endedActions;
}