package enchantHaxe;

import enchant.EnchantJS;
import ExternalHash;

/**
 * ...
 * @author gaya_K
 */

class GameHx extends EventTargetHx
{
    /**
     * コンストラクタ.
     * @param width 画面の横幅.
     * @param height 画面の高さ.
     */
    public function new(width:Float, height:Float):Void 
    {
        var obj = new Game(width, height);
        
        super(obj);
        innerGame = obj;

        assets = new ExternalHash<SurfaceHx, Surface>
        (
            function () return innerGame.assets,
            function (v) return new SurfaceHx(v),
            function (v) return v.innerSurface
        );
        input = new ExternalHashSimple<Bool>(function () return innerGame.input);
        
        GameHx.instance = this;
    }
    
    public var innerGame(default, null):Core;
    
    /**
     * 現在のCoreインスタンス.
     */
    public static var instance(default, null):GameHx;
    
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
    private function get_width() return innerGame.width;

    /**
     * 画面の高さ.
     */
    public var height(get, null):Float;
    private function get_height() return innerGame.height;
    
    /**
     * 画面の表示倍率.
     */
    public var scale(get, set):Float;
    private function get_scale() return innerGame.scale;
    private function set_scale(v) return (innerGame.scale = v);
    
    /**
     * フレームレート.
     */
    public var fps(get, set):Int;
    private function get_fps() return innerGame.fps;
    private function set_fps(v) return (innerGame.fps = v);
    
    /**
     * アプリの開始からのフレーム数.
     */
    public var frame(get, set):Int;
    private function get_frame() return innerGame.frame;
    private function set_frame(v) return (innerGame.frame = v);

    /**
     * アプリが実行可能な状態かどうか.
     */
    public var ready(get, null):Bool;
    private function get_ready() return innerGame.ready;

    /**
     * アプリが実行状態かどうか.
     */
    public var running(get, null):Bool;
    private function get_running() return innerGame.running;
    
    /**
     * 現在のScene. Sceneスタック中の一番上のScene.
     */
    public var currentScene(get, null):SceneHx;
    private function get_currentScene() return new SceneHx(innerGame.currentScene);
    
    /**
     * ルートScene. Sceneスタック中の一番下のScene.
     */
    public var rootScene(get, null):SceneHx;
    private function get_rootScene() return new SceneHx(innerGame.rootScene);
    
    /**
     * ローディング時に表示されるScene.
     */
    public var loadingScene(get, null):SceneHx;
    private function get_loadingScene() return new SceneHx(innerGame.loadingScene);
    
    /**
     * 
     */
    public var onload(get, set):Void->Void;
    private function get_onload() return innerGame.onload;
    private function set_onload(v) return (innerGame.onload = v);

    /**
     * Core#start が呼ばれてから経過した時間 (秒)
     */
    public var elapsedTime(get, null):Int;
    private function get_elapsedTime() return innerGame.getElapsedTime();
    
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
        innerGame.preload(assets);
    }

    /**
     * ファイルのロードを行う.
     * @param src ロードするファイルのパス.
     * @param callBack ファイルのロードが完了したときに呼び出される関数.
     */
    public function load(src:String, callBack:Void->Void):Void
    {
        innerGame.load(src, callBack);
    }

    /**
     * アプリを起動する.
     */
    public function start():Void
    {
        innerGame.start();
    }
    
    /**
     * アプリをデバッグモードで開始する.
     */
    public function debug():Void
    {
        innerGame.debug();
    }
        
    /**
     * アプリを停止する.
     */
    public function stop():Void
    {
        innerGame.stop();
    }
    
    /**
     * アプリを一時停止する.
     */
    public function pause():Void
    {
        innerGame.pause();
    }
    
    /**
     * アプリを再開する.
     */
    public function resume():Void
    {
        innerGame.resume();
    }
    
    /**
     * 新しいSceneに移行する.
     * @param scene 移行する新しいScene.
     * @return 新しいScene.
     */
    public function pushScene(scene:Scene):Scene
    {
        return innerGame.pushScene(scene);
    }
    
    /**
     * 現在のSceneを終了させ前のSceneに戻る.
     * @return 終了させたScene.
     */
    public function popScene():Scene
    {
        return innerGame.popScene();
    }
    
    /**
     * 現在のSceneを別のSceneにおきかえる.
     * @param scene おきかえるScene.
     * @return 新しいScene.
     */
    public function replaceScene(scene:Scene):Scene
    {
        return innerGame.replaceScene(scene);
    }
    
    /**
     * Sceneを削除する.
     * @param scene 削除するScene.
     * @return 削除したScene.
     */
    public function removeScene(scene:Scene):Scene
    {
        return innerGame.removeScene(scene);
    }
    
    /**
     * キーバインドを設定する.
     * @param key キーバインドを設定するキーコード.
     * @param button 割り当てるボタン.
     */
    public function keybind(key:Int, button:String):Void
    {
        innerGame.keybind(key, button);
    }
    
    /**
     * キーバインドを削除する.
     * @param key 削除するキーコード.
     */
    public function keyunbind(key:Int):Void
    {
        innerGame.keyunbind(key);
    }
}
