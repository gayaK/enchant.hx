package enchantHaxe;

import enchant.EnchantJS;

/**
 * ...
 * @author gaya_K
 */
class EventTypes
{
    public static function toString(v:EventType):String 
    {
        return switch (v) 
        {
            case LOAD:
                Event.LOAD;
            case PROGRESS:
                Event.PROGRESS;
            case ENTER_FRAME:
                Event.ENTER_FRAME;
            case EXIT_FRAME:
                Event.EXIT_FRAME;
            case ENTER:
                Event.ENTER;
            case EXIT:
                Event.EXIT;
            case CHILD_ADDED:
                Event.CHILD_ADDED;
            case ADDED:
                Event.ADDED;
            case ADDED_TO_SCENE:
                Event.ADDED_TO_SCENE;
            case CHILD_REMOVED:
                Event.CHILD_REMOVED;
            case REMOVED:
                Event.REMOVED;
            case REMOVED_FROM_SCENE:
                Event.REMOVED_FROM_SCENE;
            case TOUCH_START:
                Event.TOUCH_START;
            case TOUCH_MOVE:
                Event.TOUCH_MOVE;
            case TOUCH_END:
                Event.TOUCH_END;
            case RENDER:
                Event.RENDER;
            case INPUT_START:
                Event.INPUT_START;
            case INPUT_CHANGE:
                Event.INPUT_CHANGE;
            case INPUT_END:
                Event.INPUT_END;
            case LEFT_BUTTON_DOWN:
                Event.LEFT_BUTTON_DOWN;
            case LEFT_BUTTON_UP:
                Event.LEFT_BUTTON_UP;
            case RIGHT_BUTTON_DOWN:
                Event.RIGHT_BUTTON_DOWN;
            case RIGHT_BUTTON_UP:
                Event.RIGHT_BUTTON_UP;
            case UP_BUTTON_DOWN:
                Event.UP_BUTTON_DOWN;
            case UP_BUTTON_UP:
                Event.UP_BUTTON_UP;
            case DOWN_BUTTON_DOWN:
                Event.DOWN_BUTTON_DOWN;
            case DOWN_BUTTON_UP:
                Event.DOWN_BUTTON_UP;
            case A_BUTTON_DOWN:
                Event.A_BUTTON_DOWN;
            case A_BUTTON_UP:
                Event.A_BUTTON_UP;
            case B_BUTTON_DOWN:
                Event.B_BUTTON_DOWN;
            case B_BUTTON_UP:
                Event.B_BUTTON_UP;
            case ADDED_TO_TIMELINE:
                Event.ADDED_TO_TIMELINE;
            case REMOVED_FROM_TIMELINE:
                Event.REMOVED_FROM_TIMELINE;
            case ACTION_START:
                Event.ACTION_START;
            case ACTION_END:
                Event.ACTION_END;
            case ACTION_TICK:
                Event.ACTION_TICK;
            case ACTION_ADDED:
                Event.ACTION_ADDED;
            case ACTION_REMOVED:
                Event.ACTION_REMOVED;
        }
    }
        
    public static function toEventType(v:String):EventType
    {
        return switch (v) 
        {
            case Event.LOAD:
                LOAD;
            case Event.PROGRESS:
                PROGRESS;
            case Event.ENTER_FRAME:
                ENTER_FRAME;
            case Event.EXIT_FRAME:
                EXIT_FRAME;
            case Event.ENTER:
                ENTER;
            case Event.EXIT:
                EXIT;
            case Event.CHILD_ADDED:
                CHILD_ADDED;
            case Event.ADDED:
                ADDED;
            case Event.ADDED_TO_SCENE:
                ADDED_TO_SCENE;
            case Event.CHILD_REMOVED:
                CHILD_REMOVED;
            case Event.REMOVED:
                REMOVED;
            case Event.REMOVED_FROM_SCENE:
                REMOVED_FROM_SCENE;
            case Event.TOUCH_START:
                TOUCH_START;
            case Event.TOUCH_MOVE:
                TOUCH_MOVE;
            case Event.TOUCH_END:
                TOUCH_END;
            case Event.RENDER:
                RENDER;
            case Event.INPUT_START:
                INPUT_START;
            case Event.INPUT_CHANGE:
                INPUT_CHANGE;
            case Event.INPUT_END:
                INPUT_END;
            case Event.LEFT_BUTTON_DOWN:
                LEFT_BUTTON_DOWN;
            case Event.LEFT_BUTTON_UP:
                LEFT_BUTTON_UP;
            case Event.RIGHT_BUTTON_DOWN:
                RIGHT_BUTTON_DOWN;
            case Event.RIGHT_BUTTON_UP:
                RIGHT_BUTTON_UP;
            case Event.UP_BUTTON_DOWN:
                UP_BUTTON_DOWN;
            case Event.UP_BUTTON_UP:
                UP_BUTTON_UP;
            case Event.DOWN_BUTTON_DOWN:
                DOWN_BUTTON_DOWN;
            case Event.DOWN_BUTTON_UP:
                DOWN_BUTTON_UP;
            case Event.A_BUTTON_DOWN:
                A_BUTTON_DOWN;
            case Event.A_BUTTON_UP:
                A_BUTTON_UP;
            case Event.B_BUTTON_DOWN:
                B_BUTTON_DOWN;
            case Event.B_BUTTON_UP:
                B_BUTTON_UP;
            case Event.ADDED_TO_TIMELINE:
                ADDED_TO_TIMELINE;
            case Event.REMOVED_FROM_TIMELINE:
                REMOVED_FROM_TIMELINE;
            case Event.ACTION_START:
                ACTION_START;
            case Event.ACTION_END:
                ACTION_END;
            case Event.ACTION_TICK:
                ACTION_TICK;
            case Event.ACTION_ADDED:
                ACTION_ADDED;
            case Event.ACTION_REMOVED:
                ACTION_REMOVED;
            default:
                throw "Illegal value.";
        }
    }
}
