package enchantHaxe.nineleap;

import enchant.nineleap.NineLeap;
import enchantHaxe.CoreHx;
import enchantHaxe.SceneHx;
import enchantHaxe.SurfaceHx;

/**
 * ...
 * @author gaya_K
 */

class NineleapCoreHx extends CoreHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Core) 
    {
        super(base);
        innerNineleapCore = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerNineleapCore(default, null):Core;
    
    public var startScene(get, null):SceneHx;
    private function get_startScene() return new SceneHx(innerNineleapCore.startScene);
    
    public var endScene(get, null):SceneHx;
    private function get_endScene() return new SceneHx(innerNineleapCore.endScene);
    
    public var scoreQueue(get, null):Bool;
    private function get_scoreQueue() return innerNineleapCore.scoreQueue;
    
    public var started(get, null):Bool;
    private function get_started() return innerNineleapCore.started;
    
    public function loadImage(src:String, callBack:Void->Void):Void
    {
        innerNineleapCore.loadImage(src, callBack);
    }
    
    public function end(score:String, result:String, img:SurfaceHx):Void
    {
        innerNineleapCore.end(score, result, img.innerSurface);
    }
}