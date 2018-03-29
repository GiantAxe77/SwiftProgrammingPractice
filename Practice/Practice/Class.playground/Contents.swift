//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

/************ Class ************/

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDesc = shape.simpleDescription()

class NamedShape {
    var numberOfSides:Int = 0
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    deinit {
        print("deinit")
    }
    
    func simpleDesc() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var namedShape = NamedShape.init(name: "thing")
namedShape.simpleDesc()
namedShape.name

// 调试析构函数技巧
do {
    var namedShape1 = NamedShape.init(name: "Tom")
}

class Square : NamedShape {
    var sideLength:Double
    
    init(sideLength:Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDesc() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square.init(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDesc()

class Circle : NamedShape {
    var banjing:Double
    
    init(banjing:Double, name:String) {
        self.banjing = banjing
        super.init(name: name)
    }
    
    func area() -> Double {
        return banjing * banjing * M_PI;
    }
    
    override func simpleDesc() -> String {
        return "A circle with banjing \(banjing)."
    }
}
let test1 = Circle.init(banjing: 3, name: "yuan")
test1.area()
test1.simpleDesc()


class EquilateralTriangle : NamedShape {
    var sideLength:Double = 0.0
    init(sideLength:Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter : Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDesc() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}
var triagle = EquilateralTriangle.init(sideLength: 3.1, name: "a triagle")
print(triagle.perimeter)
triagle.perimeter = 9.9
print(triagle.sideLength)


//class TriangleAndSquare {
//    var triangle:EquilateralTriangle {
//        willSet {
//            
//        }
//    }
//    
//    init(size:Double, name:String) {
//        
//    }
//}


class People : NSObject {
    // 普通属性
    var firstName:String = ""
    var lastName:String = ""
    var nickName:String = ""
    
    // 计算属性
    var fullName:String {
        get {
            return nickName + " " + firstName + " " + lastName
        }
    }
    
    var age:Int = 0
    {
        willSet {
            print("will set an new value \(newValue) to age")
        }
        didSet {
            print("age filed changed from \(oldValue) to \(age)")
            if age < 10 {
                nickName = "Tom"
            } else {
                nickName = "Big"
            }
        }
    }
    
    func toString() -> String {
        return "full name is \(fullName) "+" age is \(age)"
    }
}
var me = People()
me.firstName = "Wei"
me.lastName = "Guo"
me.age = 20
print(me.toString())




