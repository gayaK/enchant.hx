package enchantHaxe.nineleap;

import enchant.nineleap.*;
import enchantHaxe.*;

/**
 * ...
 * @author gaya_K
 */

class SplashSceneHx extends SceneHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:SplashScene) 
    {
        super(base);
        innerSplashScene = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerSplashScene(default, null):SplashScene;
    
    /**
     * 中央に表示する画像
     */
    public var image(get, set):SurfaceHx;
    private function get_image() return new SurfaceHx(innerSplashScene.image);
    private function set_image(v:SurfaceHx)
    {
        innerSplashScene.image = v.innerSurface;
        return v;
    }
}