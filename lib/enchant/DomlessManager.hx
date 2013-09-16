package enchant;

import js.html.*;

/**
 * ...
 * @author gaya_K
 */

extern class DomlessManager /*implements IDomMangager*/
{
    public function new(node:Node):Void;

    public function getDomElement():HtmlElement;
    public function getDomElementAsNext():HtmlElement;
    public function getNextManager(manager:DomManager):DomManager;
    public function addManager(childManager:DomManager, nextManager:DomManager):Void;
    @:overload(function(childManager:DomlessManager):Void{})
    public function removeManager(childManager:DomManager):Void;
    public function setLayer(layer:DomLayer):Void;
    public function render(inheritMat:Matrix):Void;
    public function remove():Void;
}
