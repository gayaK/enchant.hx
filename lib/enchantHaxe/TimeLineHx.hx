package enchantHaxe;

import enchant.EnchantJS;
using enchantHaxe.EasingTypes;

/**
 * ...
 * @author gaya_K
 */

class TimelineHx extends EventTargetHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Timeline) 
    {
        super(base);
        innerTimeline = base;
        queue = new ExternalArray<ActionHx, Action>(
            function() return innerTimeline.queue,
            function(v) return new ActionHx(v),
            function(v) return v.innerAction
        );
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerTimeline(default, null):Timeline;
    
    public var node(get, null):NodeHx;
    private function get_node() return new NodeHx(innerTimeline.node);
    
    public var queue(default, null):ExternalArray<ActionHx, Action>;
    
    public var paused(get, null):Bool;
    private function get_paused() return innerTimeline.paused;
    
    public var looped(get, null):Bool;
    private function get_looped() return innerTimeline.looped;
    
    public var isFrameBased(get, set):Bool;
    private function get_isFrameBased() return innerTimeline.isFrameBased;
    private function set_isFrameBased(v) return (innerTimeline.isFrameBased = v);
    
    /**
     * 一つのenchant.Event.ENTER_FRAMEイベントはアニメーションに一つの時間単位になる。 （デフォルト）
     */
    public function setFrameBased():Void
    {
        innerTimeline.setFrameBased();
    }
    
    /**
     * 一つのenchant.Event.ENTER_FRAMEイベントはアニメーションに前のフレームから経過した時間になる。
     */
    public function setTimeBased():Void
    {
        innerTimeline.setTimeBased();
    }
    
    /**
     * キューの先頭にあるアクションを終了し、次のアクションへ移行する。
     * アクションの中から呼び出されるが、外から呼び出すこともできる。
     *
     * アクション実行中に、アクションが終了した場合、
     * もう一度 tick() 関数が呼ばれるため、1フレームに複数のアクションが処理される場合もある。
     * @param remainingTime
     * @return
     */
    public function next(remainingTime:Float):Void
    {
        innerTimeline.next(remainingTime);
    }
    
    /**
     * ターゲットの enterframe イベントのリスナとして登録される関数
     * 1フレーム経過する際に実行する処理が書かれている。
     * (キューの先頭にあるアクションに対して、actionstart/actiontickイベントを発行する)
     * @param enterFrameEvent
     * @return
     */
    public function tick(enterFrameEvent:EventTargetHx):Void
    {
        innerTimeline.tick(enterFrameEvent.innerEventTarget);
    }
    
    /**
     * 
     * @param action
     * @return
     */
    public function add(action:ActionHx):TimelineHx
    {
        innerTimeline.add(action.innerAction);
        return this;
    }
    
    /**
     * アクションを簡単に追加するためのメソッド。
     * 実体は add メソッドのラッパ。
     * @param params アクションの設定オブジェクト
     * @return
     */
    public function action(params:String):TimelineHx // ??
    {
        innerTimeline.action(params);
        return this;
    }
    
    /**
     * トゥイーンを簡単に追加するためのメソッド。
     * 実体は add メソッドのラッパ。
     * @param params トゥイーンの設定オブジェクト。
     * @return
     */
    public function tween(params:String):TimelineHx  // ??
    {
        innerTimeline.tween(params);
        return this;
    }
    
    /**
     * タイムラインのキューをすべて破棄する。終了イベントは発行されない。
     * @return
     */
    public function clear():TimelineHx
    {
        innerTimeline.clear();
        return this;
    }
    
    /**
     * タイムラインを早送りする。
     * 指定したフレーム数が経過したのと同様の処理を、瞬時に実行する。
     * 巻き戻しはできない。
     * @param frames
     * @return
     */
    public function skip(frames:Int):TimelineHx
    {
        innerTimeline.skip(frames);
        return this;
    }
    
    /**
     * タイムラインの実行を一時停止する
     * @return
     */
    public function pause():TimelineHx
    {
        innerTimeline.pause();
        return this;
    }
    
    /**
     * タイムラインの実行を再開する
     * @return
     */
    public function resume():TimelineHx
    {
        innerTimeline.resume();
        return this;
    }
    
    /**
     * タイムラインをループさせる。
     * ループしているときに終了したアクションは、タイムラインから取り除かれた後
     * 再度タイムラインに追加される。このアクションは、ループが解除されても残る。
     * @return
     */
    public function loop():TimelineHx
    {
        innerTimeline.loop();
        return this;
    }
    
    /**
     * タイムラインのループを解除する。
     * @return
     */
    public function unloop():TimelineHx
    {
        innerTimeline.unloop();
        return this;
    }
    
    /**
     * 指定したフレーム数だけ待ち、何もしないアクションを追加する。
     * @param time
     * @return
     */
    public function delay(time:Int):TimelineHx
    {
        innerTimeline.delay(time);
        return this;
    }
    
    /**
     * 関数を実行し、即時に次のアクションに移るアクションを追加する。
     * @param func
     * @return
     */
    public function then(func:NodeHx-> Void):TimelineHx
    {
        innerTimeline.then(function (node) func(new NodeHx(node)));
        return this;
    }
    
    /**
     * 実行したい関数を、フレーム数をキーとした連想配列(オブジェクト)で複数指定し追加する。
     * 内部的には delay, then を用いている。
     * @param cue
     * @param Void->Void>
     */
    public function cue(cue:Dynamic/*Dictionary<Int,Void->Void>*/):Void
    {
        innerTimeline.cue(cue);
    }
    
    /**
     * ある関数を指定したフレーム数繰り返し実行するアクションを追加する。
     * @param func 実行したい関数
     * @param time 持続フレーム数
     * @return
     */
    public function repeat(func:Void->Void, time:Int):TimelineHx
    {
        innerTimeline.repeat(func, time);
        return this;
    }
    
    /**
     * 複数のアクションを並列で実行したいときに指定する。
     * and で結ばれたすべてのアクションが終了するまで次のアクションには移行しない
     * @return
     */
    public function and():TimelineHx
    {
        innerTimeline.and();
        return this;
    }
    
    /**
     * true値 が返るまで、関数を毎フレーム実行するアクションを追加する。
     * @param func
     * @return
     */
    public function waitUntil(func:Void->Bool):TimelineHx
    {
        innerTimeline.waitUntil(func);
        return this;
    }
    
    /**
     * Entity の不透明度をなめらかに変えるアクションを追加する。
     * @param opacity 目標の不透明度
     * @param time フレーム数
     * @param easing イージング関数
     * @return
     */
    public function fadeTo(opacity:Float, time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.fadeTo(opacity, time, func);
        return this;
    }
    
    /**
     * Entity をフェードインするアクションを追加する。
     * fadeTo(1) のエイリアス。
     * @param time フレーム数
     * @param easing イージング関数
     * @return
     */
    public function fadeIn(time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.fadeIn(time, func);
        return this;
    }
    
    /**
     * Entity をフェードアウトするアクションを追加する。
     * fadeTo(0) のエイリアス。
     * @param time フレーム数
     * @param easing イージング関数
     * @return
     */
    public function fadeOut(time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.fadeOut(time, func);
        return this;
    }
    
    /**
     * Entity の位置をなめらかに移動させるアクションを追加する。
     * @param x 目標のx座標
     * @param y 目標のy座標
     * @param time フレーム数
     * @param easing イージング関数
     * @return
     */
    public function moveTo(x:Float, y:Float, time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.moveTo(x, y, time, func);
        return this;
    }
    
    /**
     * Entity のx座標をなめらかに変化させるアクションを追加する。
     * @param x
     * @param time
     * @param easing
     * @return
     */
    public function moveX(x:Float, time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.moveX(x, time, func);
        return this;
    }
    
    /**
     * Entity のy座標をなめらかに変化させるアクションを追加する。
     * @param y
     * @param time
     * @param easing
     * @return
     */
    public function moveY(y:Float, time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.moveY(y, time, func);
        return this;
    }
    
    /**
     * Entity の位置をなめらかに変化させるアクションを追加する。
     * 座標は、アクション開始時からの相対座標で指定する。
     * @param x
     * @param y
     * @param time
     * @param easing
     * @return
     */
    public function moveBy(x:Float, y:Float, time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.moveBy(x, y, time, func);
        return this;
    }
    
    /**
     * Entity の opacity を0にする (即時)
     * @return
     */
    public function hide():TimelineHx
    {
        innerTimeline.hide();
        return this;
    }
    
    /**
     * Entity の opacity を1にする (即時)
     * @return
     */
    public function show():TimelineHx
    {
        innerTimeline.show();
        return this;
    }
    
    /**
     * Entity をシーンから削除する。
     * シーンから削除された場合、 enterframe イベントは呼ばれなくなるので、
     * タイムラインも止まることに注意。
     * これ以降のアクションは、再度シーンに追加されるまで実行されない。
     * @return
     */
    public function removeFromScene():TimelineHx
    {
        innerTimeline.removeFromScene();
        return this;
    }
    
    /**
     * Entity をなめらかに拡大・縮小するアクションを追加する。
     * @param scale 縮尺
     * @param time
     * @param easing
     * @return
     */
    public function scaleTo(scale:Float , time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.scaleTo(scale, time, func);
        return this;
    }
    
    /**
     * Entity をなめらかに拡大・縮小させるアクションを追加する。
     * 相対縮尺 (ex. アクション開始時の縮尺の n 倍) で指定する。
     * @param scale 縮尺
     * @param time
     * @param easing
     * @return
     */
    public function scaleBy(scale:Float, time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.scaleBy(scale, time, func);
        return this;
    }
    
    /**
     * Entity をなめらかに回転させるアクションを追加する。
     * @param deg 目標の回転角度 (弧度法: 1回転を 360 とする)
     * @param time フレーム数
     * @param easing イージング関数
     * @return
     */
    public function rotateTo(time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.rotateTo(time, func);
        return this;
    }
    
    /**
     * Entity をなめらかに回転させるアクションを追加する。
     * 角度は相対角度 (アクション開始時の角度から更に n 度) で指定する
     * @param deg 目標の相対角度 (弧度法: 1回転を 360 とする)
     * @param time フレーム数
     * @param easing イージング関数
     * @return
     */
    public function rotateBy(time:Int , ?easing:EasingType):TimelineHx
    {
        var func = (easing == null) ? null : easing.toFunction();
        innerTimeline.rotateBy(time, func);
        return this;
    }
}