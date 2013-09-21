package enchantHaxe;

import enchant.*;
import enchant.nineleap.*;
import enchant.ui.*;
import enchantHaxe.nineleap.*;
import enchantHaxe.ui.*;

/**
 * ...
 * @author gaya_K
 */
class HxConverter
{
    public static function toActionEventTargetHx(v:ActionEventTarget):ActionEventTargetHx 
    {
        return new ActionEventTargetHx(v);
    }

    public static function toActionHx(v:Action):ActionHx 
    {
        return new ActionHx(v);
    }

    public static function toCoreHx(v:enchant.Core):CoreHx 
    {
        return new CoreHx(v);
    }

    public static function toEntityHx(v:Entity):EntityHx 
    {
        return new EntityHx(v);
    }

    public static function toEventHx(v:Event):EventHx 
    {
        return new EventHx(v);
    }

    public static function toEventTargetHx(v:EventTarget):EventTargetHx 
    {
        return new EventTargetHx(v);
    }

    public static function toGroupHx(v:Group):GroupHx 
    {
        return new GroupHx(v);
    }

    public static function toLabelHx(v:Label):LabelHx 
    {
        return new LabelHx(v);
    }

    public static function toMapHx(v:Map):MapHx 
    {
        return new MapHx(v);
    }

    public static function toNodeHx(v:Node):NodeHx 
    {
        return new NodeHx(v);
    }

    public static function toParallelActionHx(v:ParallelAction):ParallelActionHx 
    {
        return new ParallelActionHx(v);
    }

    public static function toSceneHx(v:Scene):SceneHx 
    {
        return new SceneHx(v);
    }

    public static function toSpriteHx(v:Sprite):SpriteHx 
    {
        return new SpriteHx(v);
    }

    public static function toSurfaceHx(v:Surface):SurfaceHx 
    {
        return new SurfaceHx(v);
    }

    public static function toTimelineHx(v:Timeline):TimelineHx 
    {
        return new TimelineHx(v);
    }

    public static function toTweenHx(v:Tween):TweenHx 
    {
        return new TweenHx(v);
    }

    /* enchant.nineleap */

    public static function toNineleapCoreHx(v:enchant.nineleap.Core):NineleapCoreHx 
    {
        return new NineleapCoreHx(v);
    }

    public static function toSplashSceneHx(v:SplashScene):SplashSceneHx 
    {
        return new SplashSceneHx(v);
    }

    /* enchant.ui */

    public static function toAPadHx(v:APad):APadHx 
    {
        return new APadHx(v);
    }

    public static function toBarHx(v:Bar):BarHx 
    {
        return new BarHx(v);
    }

    public static function toButtonHx(v:Button):ButtonHx 
    {
        return new ButtonHx(v);
    }

    public static function toLifeLabelHx(v:LifeLabel):LifeLabelHx 
    {
        return new LifeLabelHx(v);
    }

    public static function toMutableTextHx(v:MutableText):MutableTextHx 
    {
        return new MutableTextHx(v);
    }

    public static function toPadHx(v:Pad):PadHx 
    {
        return new PadHx(v);
    }

    public static function toScoreLabelHx(v:ScoreLabel):ScoreLabelHx 
    {
        return new ScoreLabelHx(v);
    }

    public static function toTimeLabelHx(v:TimeLabel):TimeLabelHx 
    {
        return new TimeLabelHx(v);
    }

    public static function toVirtualMapHx(v:VirtualMap):VirtualMapHx 
    {
        return new VirtualMapHx(v);
    }
}
