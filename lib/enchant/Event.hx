package enchant;

/**
 * ...
 * @author gaya_K
 */

 extern class Event
{
    public function new(type:String):Void;

    public var target:EventTarget;
    public var type:String;
    public var x:Int;
    public var y:Int;
    public var localX:Int;
    public var localY:Int;

    public static var LOAD:String;
    public static var PROGRESS:String;
    public static var ENTER_FRAME:String;
    public static var EXIT_FRAME:String;
    public static var ENTER:String;
    public static var EXIT:String;
    public static var CHILD_ADDED:String;
    public static var ADDED:String;
    public static var ADDED_TO_SCENE:String;
    public static var CHILD_REMOVED:String;
    public static var REMOVED:String;
    public static var REMOVED_FROM_SCENE:String;
    public static var TOUCH_START:String;
    public static var TOUCH_MOVE:String;
    public static var TOUCH_END:String;
    public static var RENDER:String;
    public static var INPUT_START:String;
    public static var INPUT_CHANGE:String;
    public static var INPUT_END:String;
    public static var LEFT_BUTTON_DOWN:String;
    public static var LEFT_BUTTON_UP:String;
    public static var RIGHT_BUTTON_DOWN:String;
    public static var RIGHT_BUTTON_UP:String;
    public static var UP_BUTTON_DOWN:String;
    public static var UP_BUTTON_UP:String;
    public static var DOWN_BUTTON_DOWN:String;
    public static var DOWN_BUTTON_UP:String;
    public static var A_BUTTON_DOWN:String;
    public static var A_BUTTON_UP:String;
    public static var B_BUTTON_DOWN:String;
    public static var B_BUTTON_UP:String;
    public static var ADDED_TO_TIMELINE:String;
    public static var REMOVED_FROM_TIMELINE:String;
    public static var ACTION_START:String;
    public static var ACTION_END:String;
    public static var ACTION_TICK:String;
    public static var ACTION_ADDED:String;
    public static var ACTION_REMOVED:String;
}
