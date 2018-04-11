//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


for index in 1...5 {
    print(_: "\(index)", terminator: "")
}


let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")


let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("0,0")
case (_, 0):
    print("x-axis")
case (0, _):
    print("y-axis")
default:
    print("outside point")
}


let anotherPoint = (1, -1)
switch anotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("not on an axis")
}


let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput.characters {
    switch character {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)


let numberSymbol: Character = "三" // 简体中文里的数字 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "?", "一", "?":
    possibleIntegerValue = 1
case "2", "?", "二", "?":
    possibleIntegerValue = 2
case "3", "?", "三", "?":
    possibleIntegerValue = 3
case "4", "?", "四", "?":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}


let integerToDescribe = 5
var desc = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2,3,5,7:
    desc += "a prime number, and also "
    fallthrough
default:
    desc += "an integer"
}
print(desc)


func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello, \(name)")
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}
greet(person: ["name": "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])


if #available(iOS 10, macOS 10.12, *) {
    print("iOS 10, macOS 10.12")
} else {
    print("使用先前版本的 iOS 和 macOS 的 API")
}


