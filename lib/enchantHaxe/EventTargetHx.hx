package enchantHaxe;

//import enchant.*;
using enchantHaxe.EventTypes;
using enchantHaxe.HxConverter;

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
    public function new(base:enchant.EventTarget):Void
    {
        innerEventTarget = base;
        //listenerMap = new Map<EventHx->Void, enchant.EnchantJS.Event->Void>();
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerEventTarget(default, null):enchant.EventTarget;
    
    private var listenerMap:Map<EventHx->Void, enchant.Event->Void>;
    
    /**
     * イベントリスナを追加する.
     * @param type イベントのタイプ.
     * @param listenerEx 追加するイベントリスナ.
     */
    public function addEventListener(type:EventType, listenerHx:EventHx->Void):Void
    {
        var listener = function (e:enchant.Event):Void
        {
            listenerHx(e.toEventHx());
        };
        //listenerMap.set(listenerHx, listener);

        innerEventTarget.addEventListener(
            type.toString(),
            listener
        );
    }
    
    /**
     * イベントリスナを削除する.
     * @param type イベントのタイプ.
     * @param listener 削除するイベントリスナ.
     */
    public function removeEventListener(type:EventType, listenerHx:EventHx->Void):Void
    {
        // var listener = listenerMap.get(listenerHx);
        // innerEventTarget.removeEventListener(EventTypes.toString(type), listener);
        throw "this method is not supported yet.";
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
    public function dispatchEvent(e:enchant.Event):Void
    {
        innerEventTarget.dispatchEvent(e);
    }
}
