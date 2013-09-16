package enchantHaxe;

/**
 * ...
 * @author gaya_K
 */

class ExternalHash<TVal, TSrc>
{
    public function new(
        hashGetter:Void->Dynamic,
        convert:TSrc->TVal,
        convertBack:TVal->TSrc
    ):Void 
    {
        this._hashGetter = hashGetter;
        this._convert = convert;
        this._convertBack = convertBack;
    }
    
    private var _hashGetter:Void->Dynamic;
    private var _convert:TSrc->TVal;
    private var _convertBack:TVal->TSrc;

    
    public function set(key:String, v:TVal):Void 
    {
        var h = _hashGetter();
        untyped h[key] = _convertBack(v);
    }
    
    public function get(key:String):Null<TVal> 
    {
        var h = _hashGetter();
        var v:TSrc;
        untyped v = h[key];
        return _convert(v);
    }
    
    public function exists(key:String):Bool 
    {
        var h = _hashGetter();
        return untyped h.hasOwnProperty(key);
    }
    
    public function remove(key:String):Bool 
    {
        var h = _hashGetter();
        if (untyped !h.hasOwnProperty(key))
        {
            return false;
        }
        else 
        {
            untyped __js__("delete")(h[key]);
            return true;
        }
    }
    
    public function keys():Iterator<String> 
    {
        var h = _hashGetter();
        var a = [];
        untyped {
            __js__("for(var key in h) {");
                if( h.hasOwnProperty(key) )
                    a.push(key);
            __js__("}");
        }
        return a.iterator();
    }
    
    public function iterator():Iterator<TVal> 
    {
        var h = _hashGetter();
        return untyped {
            ref : h,
            it : keys(),
            hasNext : function() { return __this__.it.hasNext(); },
            next : function() { var i = __this__.it.next(); return __this__.ref[i]; }
        };
    }
    
    public function toString():String 
    {
        var h = _hashGetter();
        var s = new StringBuf();
        s.add("{");
        var it = keys();
        for( i in it ) {
            s.add(i);
            s.add(" => ");
            s.add(Std.string(get(i)));
            if( it.hasNext() )
                s.add(", ");
        }
        s.add("}");
        return s.toString();
    }
}
