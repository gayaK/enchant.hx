package enchantHaxe;

/**
 * ...
 * @author gaya_K
 */
class ExternalArray<TVal, TSrc>
{
    public function new(
        arrayGetter:Void->Array<TSrc>,
        convert:TSrc->TVal,
        convertBack:TVal->TSrc
    ):Void
    {
        this._arrayGetter = arrayGetter;
        this._convert = convert;
        this._convertBack = convertBack;
    }
    
    private var _arrayGetter:Void->Array<TSrc>;
    private var _convert:TSrc->TVal;
    private var _convertBack:TVal->TSrc;
    
    public var length(get, null):Int;
    private function get_length() return _arrayGetter().length;
    
    public function concat(a:Array<TVal>)
    {
        return _arrayGetter()
            .map(_convert)
            .concat(a)
            .map(_convertBack);
    }
    
    public function pop():Null<TVal> 
    {
        var v = _arrayGetter().pop();
        if (v == null)
        {
            return null;
        }
        else
        {
            return _convert(v);
        }
    }
    
    public function push(x:TVal):Int
    {
        return _arrayGetter().push(_convertBack(x));
    }
    
    public function reverse():Void
    {
        _arrayGetter().reverse();
    }
    
    public function shift():Null<TVal>
    {
        var v = _arrayGetter().shift();
        if (v == null)
        {
            return null;
        }
        else
        {
            return _convert(v);
        }
    }
    
    public function unshift(x:TVal):Void
    {
        _arrayGetter().unshift(_convertBack(x));
    }
    
    public function slice(pos:Int, ?end:Int):Array<TVal>
    {
        return _arrayGetter()
            .slice(pos, end)
            .map(_convert);
    }
    
    public function splice(pos:Int, len:Int):Array<TVal>
    {
        return _arrayGetter()
            .splice(pos, len)
            .map(_convert);
    }
    
    public function insert(pos:Int, x:TVal):Void
    {
        _arrayGetter().insert(pos, _convertBack(x));
    }
    
    public function remove(x:TVal):Bool
    {
        return _arrayGetter().remove(_convertBack(x));
    }
    
    public function copy():Array<TVal>
    {
        return _arrayGetter().map(_convert);
    }
    
    public function iterator():Iterator<TVal>
    {
        return _arrayGetter()
            .map(_convert)
            .iterator();
    }
    
    public function get(i:Int):TVal
    {
        return _convert(_arrayGetter()[i]);
    }
    
    public function set(i:Int, v:TVal):TVal
    {
        _arrayGetter()[i] = _convertBack(v);
        return v;
    }
}