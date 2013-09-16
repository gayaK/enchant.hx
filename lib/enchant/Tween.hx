package enchant;

/**
 * ...
 * @author gaya_K
 */

typedef EasingFunction = Float->Float->Float->Float->Float;

extern class Tween extends Action
{
    public function new(param:Dynamic):Void;    // todo

    public var easing:EasingFunction;
}
