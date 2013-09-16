package enchantHaxe;

import enchant.EnchantJS;
import enchantHaxe.EventTargetHx;

using enchantHaxe.EventTypes;

/**
 * ...
 * @author gaya_K
 */
class EventHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Event):Void
    {
        innerEvent = base;
    }

    /**
     * 内包するオブジェクト.
     */
    public var innerEvent(default, null):Event;
    
    /**
     * イベントのタイプ.
     */
    public var type(get, null):EventType;
    private function get_type() return innerEvent.type.toEventType();
     
    /**
     * イベントのターゲット.
     */
    public var target(get, null):EventTargetHx;
    private function get_target() return new EventTargetHx(innerEvent.target);
    
    /**
     * イベント発生位置のx座標.
     */
    public var x(get, null):Int;
    private function get_x() return innerEvent.x;
    
    /**
     * イベント発生位置のy座標.
     */
    public var y(get, null):Int;
    private function get_y() return innerEvent.y;
    
    /**
     * イベントを発行したオブジェクトを基準とするイベント発生位置のx座標.
     */
    public var localX(get, null):Int;
    private function get_localX() return innerEvent.localX;
    
    /**
     * イベントを発行したオブジェクトを基準とするイベント発生位置のy座標.
     */
    public var localY(get, null):Int;
    private function get_localY() return innerEvent.localY;
}
