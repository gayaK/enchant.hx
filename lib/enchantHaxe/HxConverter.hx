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
    public static inline function toActionEventTargetHx(v:ActionEventTarget):ActionEventTargetHx 
    {
        return new ActionEventTargetHx(v);
    }

    public static inline function toActionHx(v:Action):ActionHx 
    {
        return new ActionHx(v);
    }

    public static inline function toCoreHx(v:enchant.Core):CoreHx 
    {
        return new CoreHx(v);
    }

    public static inline function toEntityHx(v:Entity):EntityHx 
    {
        return new EntityHx(v);
    }

    public static inline function toEventHx(v:Event):EventHx 
    {
        return new EventHx(v);
    }

    public static inline function toEventTargetHx(v:EventTarget):EventTargetHx 
    {
        return new EventTargetHx(v);
    }

    public static inline function toGroupHx(v:Group):GroupHx 
    {
        return new GroupHx(v);
    }

    public static inline function toLabelHx(v:Label):LabelHx 
    {
        return new LabelHx(v);
    }

    public static inline function toMapHx(v:Map):MapHx 
    {
        return new MapHx(v);
    }

    public static inline function toNodeHx(v:Node):NodeHx 
    {
        return new NodeHx(v);
    }

    public static inline function toParallelActionHx(v:ParallelAction):ParallelActionHx 
    {
        return new ParallelActionHx(v);
    }

    public static inline function toSceneHx(v:Scene):SceneHx 
    {
        return new SceneHx(v);
    }

    public static inline function toSpriteHx(v:Sprite):SpriteHx 
    {
        return new SpriteHx(v);
    }

    public static inline function toSurfaceHx(v:Surface):SurfaceHx 
    {
        return new SurfaceHx(v);
    }

    public static inline function toTimelineHx(v:Timeline):TimelineHx 
    {
        return new TimelineHx(v);
    }

    public static inline function toTweenHx(v:Tween):TweenHx 
    {
        return new TweenHx(v);
    }

    /* enchant.nineleap */

    public static inline function toNineleapCoreHx(v:enchant.nineleap.Core):NineleapCoreHx 
    {
        return new NineleapCoreHx(v);
    }

    public static inline function toSplashSceneHx(v:SplashScene):SplashSceneHx 
    {
        return new SplashSceneHx(v);
    }

    /* enchant.ui */

    public static inline function toAPadHx(v:APad):APadHx 
    {
        return new APadHx(v);
    }

    public static inline function toBarHx(v:Bar):BarHx 
    {
        return new BarHx(v);
    }

    public static inline function toButtonHx(v:Button):ButtonHx 
    {
        return new ButtonHx(v);
    }

    public static inline function toLifeLabelHx(v:LifeLabel):LifeLabelHx 
    {
        return new LifeLabelHx(v);
    }

    public static inline function toMutableTextHx(v:MutableText):MutableTextHx 
    {
        return new MutableTextHx(v);
    }

    public static inline function toPadHx(v:Pad):PadHx 
    {
        return new PadHx(v);
    }

    public static inline function toScoreLabelHx(v:ScoreLabel):ScoreLabelHx 
    {
        return new ScoreLabelHx(v);
    }

    public static inline function toTimeLabelHx(v:TimeLabel):TimeLabelHx 
    {
        return new TimeLabelHx(v);
    }

    public static inline function toVirtualMapHx(v:VirtualMap):VirtualMapHx 
    {
        return new VirtualMapHx(v);
    }
}
