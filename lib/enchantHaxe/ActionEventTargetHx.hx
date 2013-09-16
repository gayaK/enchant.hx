package enchantHaxe;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

class ActionEventTargetHx extends EventTargetHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:ActionEventTarget) 
    {
        super(base);
        innerActionEventTarget = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerActionEventTarget(default, null):ActionEventTarget;
}