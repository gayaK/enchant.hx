package enchant;

import enchant.EasingFunction;

/**
 * ...
 * @author gaya_K
 */

extern class Timeline extends EventTarget
{
    public function new(node:Node):Void;

    public var node:Node;
    public var queue:Array<Action>;
    public var paused:Bool;
    public var looped:Bool;
    public var isFrameBased:Bool;

    public function setFrameBased():Void;
    public function setTimeBased():Void;
    public function next(remainingTime:Float):Void;
    public function tick(enterFrameEvent:EventTarget):Void;
    public function add(action:Action):Timeline;
    public function action(params:String):Timeline; // ??
    public function tween(params:String):Timeline;  // ??
    public function clear():Timeline;
    public function skip(frames:Int):Timeline;
    public function pause():Timeline;
    public function resume():Timeline;
    public function loop():Timeline;
    public function unloop():Timeline;
    public function delay(time:Int):Timeline;
    public function then(func:Node->Void):Timeline;
    public function cue(cue:Dynamic/*Dictionary<Int,Void->Void>*/):Void;
    public function repeat(func:Void->Void, time:Int):Timeline;
    public function and():Timeline;
    public function waitUntil(func:Void->Bool):Timeline;
    public function fadeTo(opacity:Float, time:Int , ?easing:EasingFunction):Timeline;
    public function fadeIn(time:Int , ?easing:EasingFunction):Timeline;
    public function fadeOut(time:Int , ?easing:EasingFunction):Timeline;
    public function moveTo(x:Float, y:Float, time:Int , ?easing:EasingFunction):Timeline;
    public function moveX(x:Float, time:Int , ?easing:EasingFunction):Timeline;
    public function moveY(y:Float, time:Int , ?easing:EasingFunction):Timeline;
    public function moveBy(x:Float, y:Float, time:Int , ?easing:EasingFunction):Timeline;
    public function hide():Timeline;
    public function show():Timeline;
    public function removeFromScene():Timeline;
    public function scaleTo(scale:Float , time:Int , ?easing:EasingFunction):Timeline;
    public function scaleBy(scale:Float,time:Int , ?easing:EasingFunction):Timeline;
    public function rotateTo(deg:Int, time:Int , ?easing:EasingFunction):Timeline;
    public function rotateBy(deg:Int, time:Int , ?easing:EasingFunction):Timeline;
}
