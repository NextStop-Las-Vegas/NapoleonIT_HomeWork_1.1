import UIKit

class Figure {
    var name : String { return "" }
    var cornerRadius: Int { return 0 }
}

//MARK: -HOMEWORK 1.2 EXTENSIONS

extension Figure {
    
    func perimeter(width: Int, length: Int) -> Int{
        return 2*(width + length)}
}

extension Figure {
    
    func perimeterIsEven(width: Int, length: Int) -> Bool{
        var isEven: Bool{
            return (perimeter(width: width, length: length)) % 2 == 0 ? true : false
        }
        return isEven
    }
}

extension Figure {
    
    func square(width: Int, length: Int) -> Int{
        return width * length}
}

//MARK: -

protocol PerimeterQuadrangularFigures {
    
    var width : Double { get set }
    var length : Double { get set }
}

extension PerimeterQuadrangularFigures {
    var perimeter: Double {return 2*(width + length)}
}

class Traingle : Figure {
    override var name : String { return "trinagle" }
    override var cornerRadius: Int { return 0 }
    
    func square(lengthOne: Int, lengthTwo: Int, lengthThree: Int) -> Int{
        return lengthOne*lengthTwo*lengthThree
    }
}

class Rectangle : Figure {
    override var name : String { return "rectangle" }
    override var cornerRadius: Int { return 0 }
    
    func square(lengthOne: Int, lengthTwo: Int) -> Int{
        return lengthOne*lengthTwo
    }
}

class Circle : Figure {
    override var name : String { return "circle" }
    override var cornerRadius: Int { return 0 }
    
    func square(radius: Float) -> Float{
        let pi: Float = 3.1415
        var square: Float = 0
        square = pi*pow(radius, 2)
        return square
    }
}

class SecondRectangle : PerimeterQuadrangularFigures {
    
    var width: Double = 0.0
    var length: Double = 0.0
    
}

class Square : PerimeterQuadrangularFigures {
    
    var width: Double = 0.0
    var length: Double = 0.0
    
}

class Parallelogram : PerimeterQuadrangularFigures {
    
    var width: Double = 0.0
    var length: Double = 0.0
    
}
