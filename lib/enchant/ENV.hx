package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class ENV
{
    /**
     * Version of enchant.js
     */
    public static var VERSION(default, null):String;

    /**
     * The CSS vendor prefix of the current browser.
     */
    public static var VENDOR_PREFIX(default, null):String;

    /**
     * Determines if the current browser supports touch.
     */
    public static var TOUCH_ENABLED(default, null):Bool;

    /**
     * Determines if the current browser is an iPhone with a retina display.
     */
    public static var RETINA_DISPLAY(default, null):Bool;

    /**
     * Determines if for current browser Flash should be used to play
     * sound instead of the native audio class.
     */
    public static var USE_FLASH_SOUND(default, null):Bool;

    /**
     * If click/touch event occure for these tags the setPreventDefault() method will not be called.
     */
    public static var USE_DEFAULT_EVENT_TAGS(default, null):Array<String>;

    /**
     * If click/touch event occure for these tags the setPreventDefault() method will not be called.
     */
    public static var CANVAS_DRAWING_METHODS(default, null):Array<String>;

    /**
     * Keybind Table.
     * You can use 'left', 'up', 'right', 'down', 'a', 'b' for preset event.
     */
    public static var KEY_BIND_TABLE(default, null):Dynamic;    // todo:

    public static var PREVENT_DEFAULT_KEY_CODES(default, null):Array<Int>;

    public static var SOUND_ENABLED_ON_MOBILE_SAFARI(default, null):Bool;

    /**
     * Determines if WebAudioAPI is enabled. (true: use WebAudioAPI instead of Audio element if possible)
     */
    public static var USE_WEBAUDIO(default, null):Bool;

    /**
     * Determines if animation feature is enabled. (true: Timeline instance will be generated in new Node)
     */
    public static var USE_ANIMATION(default, null):Bool;
}
