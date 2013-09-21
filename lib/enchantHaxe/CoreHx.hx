package enchantHaxe;

import enchant.*;
using enchantHaxe.HxConverter;

/**
 * ...
 * @author gaya_K
 */

class CoreHx extends EventTargetHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Core) 
    {
        super(base);
        innerCore = base;

        assets = new ExternalHash<SurfaceHx, Surface>
        (
            function () return innerCore.assets,
            function (v) return v.toSurfaceHx(),
            function (v) return v.innerSurface
        );
        input = new ExternalHashSimple<Bool>(function () return innerCore.input);
        
        CoreHx.instance = this;
    }
    
    public var innerCore(default, null):Core;
    
    /**
     * 現在のCoreインスタンス.
     */
    public static var instance(default, null):CoreHx;
    
    /**
     * ロードされた画像をパスをキーとして保存するオブジェクト.
     */
    public var assets(default, null):ExternalHash<SurfaceHx, Surface>;
    
    /**
     * アプリに対する入力状態を保存するオブジェクト.
     */
    public var input(default, null):ExternalHashSimple<Bool>;

    /**
     * 画面の横幅.
     */
    public var width(get, null):Float;
    private function get_width() return innerCore.width;

    /**
     * 画面の高さ.
     */
    public var height(get, null):Float;
    private function get_height() return innerCore.height;
    
    /**
     * 画面の表示倍率.
     */
    public var scale(get, set):Float;
    private function get_scale() return innerCore.scale;
    private function set_scale(v) return (innerCore.scale = v);
    
    /**
     * フレームレート.
     */
    public var fps(get, set):Int;
    private function get_fps() return innerCore.fps;
    private function set_fps(v) return (innerCore.fps = v);
    
    /**
     * アプリの開始からのフレーム数.
     */
    public var frame(get, set):Int;
    private function get_frame() return innerCore.frame;
    private function set_frame(v) return (innerCore.frame = v);

    /**
     * アプリが実行可能な状態かどうか.
     */
    public var ready(get, null):Bool;
    private function get_ready() return innerCore.ready;

    /**
     * アプリが実行状態かどうか.
     */
    public var running(get, null):Bool;
    private function get_running() return innerCore.running;
    
    /**
     * 現在のScene. Sceneスタック中の一番上のScene.
     */
    public var currentScene(get, null):SceneHx;
    private function get_currentScene() return innerCore.currentScene.toSceneHx();
    
    /**
     * ルートScene. Sceneスタック中の一番下のScene.
     */
    public var rootScene(get, null):SceneHx;
    private function get_rootScene() return innerCore.rootScene.toSceneHx();
    
    /**
     * ローディング時に表示されるScene.
     */
    public var loadingScene(get, null):SceneHx;
    private function get_loadingScene() return innerCore.loadingScene.toSceneHx();
    
    /**
     * 
     */
    public var onload(get, set):Void->Void;
    private function get_onload() return innerCore.onload;
    private function set_onload(v) return (innerCore.onload = v);

    /**
     * Core#start が呼ばれてから経過した時間 (秒)
     */
    public var elapsedTime(get, null):Int;
    private function get_elapsedTime() return innerCore.getElapsedTime();
    
    /**
     * Get the file extension from a path
     * @param path
     * @return
     */
    public static function findExt(path:String):String
    {
        return Core.findExt(path);
    }
    
    /**
     * ファイルのプリロードを行う.
     * @param assets プリロードする画像のパス.
     */
    public function preload(assets:Array<String>):Void
    {
        innerCore.preload(assets);
    }

    /**
     * ファイルのロードを行う.
     * @param src ロードするファイルのパス.
     * @param callBack ファイルのロードが完了したときに呼び出される関数.
     */
    public function load(src:String, callBack:Void->Void):Void
    {
        innerCore.load(src, callBack);
    }

    /**
     * アプリを起動する.
     */
    public function start():Void
    {
        innerCore.start();
    }
    
    /**
     * アプリをデバッグモードで開始する.
     */
    public function debug():Void
    {
        innerCore.debug();
    }
        
    /**
     * アプリを停止する.
     */
    public function stop():Void
    {
        innerCore.stop();
    }
    
    /**
     * アプリを一時停止する.
     */
    public function pause():Void
    {
        innerCore.pause();
    }
    
    /**
     * アプリを再開する.
     */
    public function resume():Void
    {
        innerCore.resume();
    }
    
    /**
     * 新しいSceneに移行する.
     * @param scene 移行する新しいScene.
     * @return 新しいScene.
     */
    public function pushScene(scene:SceneHx):SceneHx
    {
        return innerCore.pushScene(scene.innerScene).toSceneHx();
    }
    
    /**
     * 現在のSceneを終了させ前のSceneに戻る.
     * @return 終了させたScene.
     */
    public function popScene():SceneHx
    {
        return innerCore.popScene().toSceneHx();
    }
    
    /**
     * 現在のSceneを別のSceneにおきかえる.
     * @param scene おきかえるScene.
     * @return 新しいScene.
     */
    public function replaceScene(scene:SceneHx):SceneHx
    {
        return innerCore.replaceScene(scene.innerScene).toSceneHx();
    }
    
    /**
     * Sceneを削除する.
     * @param scene 削除するScene.
     * @return 削除したScene.
     */
    public function removeScene(scene:SceneHx):SceneHx
    {
        return innerCore.removeScene(scene.innerScene).toSceneHx();
    }
    
    /**
     * キーバインドを設定する.
     * @param key キーバインドを設定するキーコード.
     * @param button 割り当てるボタン.
     */
    public function keybind(key:Int, button:String):Void
    {
        innerCore.keybind(key, button);
    }
    
    /**
     * キーバインドを削除する.
     * @param key 削除するキーコード.
     */
    public function keyunbind(key:Int):Void
    {
        innerCore.keyunbind(key);
    }
}
