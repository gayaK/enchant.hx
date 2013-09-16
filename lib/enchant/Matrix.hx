package enchant;

/**
 * ...
 * @author gaya_K
 */

extern class Matrix
{
    public function new():Void;

    public static var instance:Matrix;

    public function reset():Void;
    public function makeTransformMatrix(node:Node, dest:Matrix):Void;
    public function multiply(m1:Matrix, m2:Matrix, dest:Matrix):Void;
    public function multiplyVec(mat:Matrix, vec:Array<Int>, dest:Array<Int>):Void;
}
