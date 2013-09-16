package enchantHaxe;

/**
 * ...
 * @author gaya_K
 */

class ExternalHashSimple<T> extends ExternalHash<T,T>
{
    public function new(hashGetter:Void->Dynamic):Void 
    {
        super(
            hashGetter,
            function (x) return x,
            function (x) return x
        );
    }
}
