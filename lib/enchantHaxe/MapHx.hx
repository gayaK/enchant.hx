package enchantHaxe;

import enchant.*;

/**
 * ...
 * @author gaya_K
 */

class MapHx extends EntityHx
{
    /**
     * コンストラクタ.
     * @param base ラップするオブジェクト.
     */
    public function new(base:Map) 
    {
        super(base);
        innerMap = base;
    }
    
    /**
     * 内包するオブジェクト.
     */
    public var innerMap(default, null):Map;
    
    /**
     * タイルが衝突判定を持つかを表す値の二元配列.
     */
    public var collisionData(get, set):Array<Array<Int>>;
    private function get_collisionData() return innerMap.collisionData;
    private function set_collisionData(v) return (innerMap.collisionData = v);

    /**
     * Mapで表示するタイルセット画像.
     */
    public var image(get, set):Surface;
    private function get_image() return innerMap.image;
    private function set_image(v) return (innerMap.image = v);
    
    /**
     * Mapのタイルの横幅.
     */
    public var tileWidth(get, set):Float;
    private function get_tileWidth() return innerMap.tileWidth;
    private function set_tileWidth(v) return (innerMap.tileWidth = v);

    /**
     * Mapのタイルの高さ.
     */
    public var tileHeight(get, set):Float;
    private function get_tileHeight() return innerMap.tileHeight;
    private function set_tileHeight(v) return (innerMap.tileHeight = v);

    /**
     * データを設定する.
     * タイルががimageプロパティの画像に左上から順に配列されていると見て, 0から始まる
     * インデックスの二元配列を設定する.複数指定された場合は後のものから順に表示される.
     * @param data タイルのインデックスの二元配列. 複数指定できる.
     */
    public function loadData(data:Array<Array<Array<Int>>>):Void
    {
        innerMap.loadData(data);
    }
    
    /**
     * ある座標のタイルが何か調べる.
     * @param x マップ上の点のx座標.
     * @param y マップ上の点のy座標.
     * @return ある座標のタイルのデータ.
     */
    public function checkTile(x:Float, y:Float):Dynamic // todo:
    {
        return innerMap.checkTile(x, y);
    }
    
    /**
     * Map上に障害物があるかどうかを判定する.
     * @param x 判定を行うマップ上の点のx座標.
     * @param y 判定を行うマップ上の点のy座標.
     * @return 障害物があるかどうか.
     */
    public function hitTest(x:Float, y:Float):Bool
    {
        return innerMap.hitTest(x, y);
    }
}