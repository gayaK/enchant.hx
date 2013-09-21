package enchantHaxe;

import enchant.*;
import enchant.EasingFunction;

/**
 * ...
 * @author gaya_K
 */

class EasingTypes
{
    public static function toFunction(v:EasingType):EasingFunction
    {
        var key = switch (v) 
        {
            case EasingType.LINEAR:
                "LINEAR";
            case EasingType.SWING:
                "SWING";
            case EasingType.QUAD_EASEIN:
                "QUAD_EASEIN";
            case EasingType.QUAD_EASEOUT:
                "QUAD_EASEOUT";
            case EasingType.QUAD_EASEINOUT:
                "QUAD_EASEINOUT";
            case EasingType.CUBIC_EASEIN:
                "CUBIC_EASEIN";
            case EasingType.CUBIC_EASEOUT:
                "CUBIC_EASEOUT";
            case EasingType.CUBIC_EASEINOUT:
                "CUBIC_EASEINOUT";
            case EasingType.QUART_EASEIN:
                "QUART_EASEIN";
            case EasingType.QUART_EASEOUT:
                "QUART_EASEOUT";
            case EasingType.QUART_EASEINOUT:
                "QUART_EASEINOUT";
            case EasingType.QUINT_EASEIN:
                "QUINT_EASEIN";
            case EasingType.QUINT_EASEOUT:
                "QUINT_EASEOUT";
            case EasingType.QUINT_EASEINOUT:
                "QUINT_EASEINOUT";
            case EasingType.SIN_EASEIN:
                "SIN_EASEIN";
            case EasingType.SIN_EASEOUT:
                "SIN_EASEOUT";
            case EasingType.SIN_EASEINOUT:
                "SIN_EASEINOUT";
            case EasingType.CIRC_EASEIN:
                "CIRC_EASEIN";
            case EasingType.CIRC_EASEOUT:
                "CIRC_EASEOUT";
            case EasingType.CIRC_EASEINOUT:
                "CIRC_EASEINOUT";
            case EasingType.ELASTIC_EASEIN:
                "ELASTIC_EASEIN";
            case EasingType.ELASTIC_EASEOUT:
                "ELASTIC_EASEOUT";
            case EasingType.ELASTIC_EASEINOUT:
                "ELASTIC_EASEINOUT";
            case EasingType.BOUNCE_EASEOUT:
                "BOUNCE_EASEOUT";
            case EasingType.BOUNCE_EASEIN:
                "BOUNCE_EASEIN";
            case EasingType.BOUNCE_EASEINOUT:
                "BOUNCE_EASEINOUT";
            case EasingType.BACK_EASEIN:
                "BACK_EASEIN";
            case EasingType.BACK_EASEOUT:
                "BACK_EASEOUT";
            case EasingType.BACK_EASEINOUT:
                "BACK_EASEINOUT";
            case EasingType.EXPO_EASEIN:
                "EXPO_EASEIN";
            case EasingType.EXPO_EASEOUT:
                "EXPO_EASEOUT";
            case EasingType.EXPO_EASEINOUT:
                "EXPO_EASEINOUT";  
        }
        
        return untyped enchant.Easing[key];
    }
}
