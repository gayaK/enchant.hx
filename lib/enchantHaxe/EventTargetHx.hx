package enchantHaxe;

import enchant.EnchantJS;

using enchantHaxe.EventType.EventTypes;

/**
 * ...
 * @author gaya_K
 */

class EventTargetHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:EventTarget):Void
    {
        innerEventTarget = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerEventTarget(default, null):EventTarget;

    /**
     * イベントリスナを追加する.
     * @param type イベントのタイプ.
     * @param listener 追加するイベントリスナ.
     */
    public function addEventListener(type:EventType, listener:EventHx->Void):Void
    {
        innerEventTarget.addEventListener(
            type.toString(),
            function (e:Event):Void 
            {
                listener(new EventHx(e));
            }
        );
    }
    
    /**
     * イベントリスナを削除する.
     * @param type イベントのタイプ.
     * @param listener 削除するイベントリスナ.
     */
    public function removeEventListener(type:EventType, listener:Event->Void):Void
    {
        throw "this method is not supported yet.";
        //innerEventTarget.removeEventListener(EventTypes.toString(type), listener);
    }
    
    /**
     * すべてのイベントリスナを削除する.
     * @param イベントのタイプ.
     */
    public function clearEventListener(type:EventType):Void
    {
        innerEventTarget.clearEventListener(EventTypes.toString(type));
    }
    
    /**
     * イベントを発行する.
     * @param e 発行するイベント.
     */
    public function dispatchEvent(e:Event):Void
    {
        innerEventTarget.dispatchEvent(e);
    }
}
