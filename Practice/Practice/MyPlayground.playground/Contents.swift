//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

/****** The Swift Programming Language Practice *********/

let a:Double = 4

let label = "the table is"
let money = 100
let to = label + String(money)

let apples = 3
let applesSum = "I have \(apples) apples"

var shoppingList = ["water","wine","paper"]
shoppingList[1]

var infoDict = ["name":"Tom",
                "age":"14"]

infoDict["name"]

let emptyArr = [String]()
let emptyDic = [String:String]()

//let shop = []
//let shopDic = []

let individualScores = [1,2,3,4,5]
var score = 0
for s in individualScores {
    if s == 3 {
        score += 3
    } else {
        score += 0
    }
}
print(score)

var optionalString : String? = "hello"
print(optionalString)

var optionalName : String? = "John"
var greeting = "hello"
if let name = optionalName {
    greeting = "hello, \(name)"
}

let nickName : String? = nil
let fullName : String = "Giant Axe"
let informGreeting = "Hi,\(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("add some");
case let x where x.hasSuffix("pepper"):
    print("is \(x)")
default:
    print("anything is good")
}


let interstingNumbers = [
    "Prime":[2,3,5,7,9],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16]
]
var largest = 0
var largestKind : String? = nil
for (kind, nums) in interstingNumbers {
    for num in nums {
        if num > largest {
            largest = num
            largestKind = kind
        }
    }
}
print(largest)
print(largestKind)


var n = 2
while n < 100 {
    n = n*2
}
print(n)

var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)



var total = 0
for i in 0..<4 {
    total += 1
}
print(total)

var total1 = 0
for i in 0...4 {
    total1 += 1
}
print(total1)


func greet(person:String, day:String) -> String {
    return "Hello,\(person), today is \(day)"
}
greet(person: "Tom", day: "Tuesday")

func eat(person:String, dinner:String) -> String {
    return "\(person) eat \(dinner)"
}
eat(person: "Sam", dinner: "banana")

func greet1(_ person:String, on day:String) -> String {
    return "Hello \(person), today is \(day)"
}
greet1("John", on: "Wednesday")


func greet2(_ person:String, is day:String) -> String {
    return "Hello \(person), today is \(day)"
}

func calculateStatistics(scores:[Int]) -> (min:Int, max:Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return(min,max,sum)
}
let statistics = calculateStatistics(scores: [5,5,6,2,7])
print(statistics.sum)
print(statistics.2)
print(statistics.1)

func sumOf(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(numbers: 34,1,4)

func avgOf(numbers:Int...) -> Double {
    let count = numbers.count
    var sum = 0.0
    for num in numbers {
        sum += Double(num)
    }
    return sum / Double(count)
}
avgOf(numbers: 1,4,67,23,6,1,9)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()


