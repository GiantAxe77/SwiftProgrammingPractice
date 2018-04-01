//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


enum Rank : Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDesc() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.Queen
let aceRawValue = ace.rawValue
let aceStr = ace.simpleDesc()

if let convertedRank = Rank.init(rawValue:11) {
    let threeDesc = convertedRank.simpleDesc()
}

enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDesc() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Clubs:
            return "clubs"
        default:
            return "123"
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades:
            fallthrough
            return "black"
        case .Clubs:
            return "purple"
        default:
            return "red"
        }
    }
}
let hearts = Suit.Spades
let heartsDesc = hearts.simpleDesc()
let colorDesc = hearts.color()

// 一个枚举成员的实例可以有实例值。相同枚举成员的实例可以有不同的值。创建实例的时候传入值即可。实例值
// 和原始值是不同的:枚举成员的原始值对于所有实例都是相同的，而且你是在定义枚举的时候设置原始值。
enum ServerResponse {
    case Result(String, String)
    case Failure(String)
}
let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Failure("out of cheese")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)"
case let .Failure(message):
    print("fail...\(message)")
    
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    init(cardRank: Rank, cardSuit: Suit) {
        self.rank = cardRank
        self.suit = cardSuit
    }
    
    func simpleDesc() -> String {
        return "\(rank.simpleDesc()) of \(suit.simpleDesc())"
    }
    
//    func Deck() -> String {
//        var stringToTogether = ""
//        var tmpRank : Rank
//        var tmpSuit : Suit
//        for i in 0...14 {
//            if let convertedRank = Rank.init(rawValue: i) {
//                tmpRank = convertedRank
//                for y in 0...5 {
//                    if let convertedSuit = Suit.init(rawValue: y) {
//                        tmpSuit = convertedSuit
//                    }
//                }
//            }
//        }
//        return ""
//    }
}
let threeOfSpades = Card.init(cardRank: .Three, cardSuit: .Spades)
let threeOfSpadesDesc = threeOfSpades.simpleDesc()


protocol ExampleProtocol {
    var simpleDesc : String { get }
    mutating func adjust()
}

class SimpleClass : ExampleProtocol {
    var simpleDesc: String = "A very simple class."
    var anotherProperty = 69105
    func adjust() {
        simpleDesc += "Now 100% adjusted"
    }
}
var a = SimpleClass()
a.adjust()
let aDesc = a.simpleDesc

struct SimpleStructure : ExampleProtocol {
    var simpleDesc: String = "A simple structure"
    mutating func adjust() {
        simpleDesc += "(adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDesc = b.simpleDesc


extension Int : ExampleProtocol {
    var simpleDesc : String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDesc)

let protocolValue : ExampleProtocol = a
print(protocolValue.simpleDesc)
//print(protocolValue.anotherProperty)


enum PrinterError : Error {
    case OutOfPaper
    case NoToner
    case OnFire
}

func send(job:Int, toPrinter printerName:String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.OnFire
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "BI")
    print(printerResponse)
} catch {
    print(error)
}


do {
    let printerResponse = try send(job: 1440, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch PrinterError.OnFire {
    print("I will just put this over here, with the rest of fire")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}


let printerSuccess = try? send(job: 1884, toPrinter: "success")
let printerFailure = try? send(job: 1998, toPrinter: "Never Has Toner")



var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]
func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("banana")
print(fridgeIsOpen)



func repeatItem<Item> (repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
repeatItem(repeating: "knock", numberOfTimes: 4)


enum OptionalValue <Wrapped> {
    case None
    case Some(Wrapped)
    
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)


// 泛型未练习
//func anyCommonElements<T: Sequence, U:Sequence>(_ lhs: T, _ rhs:U) -> Bool {
//    where T.iterator.
//}

