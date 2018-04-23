//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

enum SomeEnumeration {
    // 枚举定义放在这里
}


enum CompassPoint {
    case north
    case south
    case east
    case west
}


enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}


var directionToHead = CompassPoint.west
directionToHead = .north

// 使用 Switch 语句匹配枚举值
switch directionToHead {
case .north:
    print("north")
case .west:
    print("west")
case .east:
    print("west")
default:
    print("default")
}



