package enchant;

/**
 * ...
 * @author gaya_K
 */

 extern class EventTarget
{
    public function new():Void;

    public function addEventListener(type:String, listener:Event->Void):Void;
    public function removeEventListener(type:String, listener:Event->Void):Void;
    public function clearEventListener(type:String):Void;
    public function dispatchEvent(e:Event):Void;
}
