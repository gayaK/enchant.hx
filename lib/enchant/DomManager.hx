package enchant;

import js.html.*;

/**
 * ...
 * @author gaya_K
 */

extern class DomManager /*implements IDomMangager*/
{
    @:overload(function(node:Node, elementDefinition:HtmlElement):Void{})
    public function new(node:Node, elementDefinition:String):Void;

    public var layer:DomLayer;
    public var targetNode:Node;
    public var element:HtmlElement;
    public var style:CSSStyleDeclaration;
    public function getDomElement():HtmlElement;
    public function getDomElementAsNext():HtmlElement;
    public function getNextManager(manager:DomManager):DomManager;
    public function addManager(childManager:DomManager, nextManager:DomManager):Void;
    @:overload(function(childManager:DomlessManager):Void{})
    public function removeManager(childManager:DomManager):Void;
    public function setLayer(layer:DomLayer):Void;
    public function render(inheritMat:Matrix):Void;
    public function domRender():Void;
    public function remove():Void;
}
