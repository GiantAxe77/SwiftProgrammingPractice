//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items")

someInts.append(3)
someInts = []


var threeDoubles = Array(repeatElement(0.0, count: 3))
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles


var shoppingList = ["pig", "apple", "pear", "banana"]
shoppingList.insert("little", at: 0)
shoppingList.remove(at: 1)
for (index, value) in shoppingList.enumerated() {
    print(index, value)
}


var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")
letters = []


var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
favoriteGenres.insert("Hazz")
favoriteGenres.remove("Hazz")
if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}


for genre in favoriteGenres.sorted() {
    print(genre)
}


let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

    
//    • 使用 intersection(_:) 方法根据两个 合中都包含的值创建的一个新的 合。
//    • 使用 symmetricDifference(_:) 方法根据在一个 合中但不在两个 合中的值创建一个新的 合。
//    • 使用 union(_:) 方法根据两个 合的值创建一个新的 合。
//    • 使用 subtracting(_:) 方法根据不在该 合中的值创建一个新的 合。
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers)
oddDigits.symmetricDifference(singleDigitPrimeNumbers)


var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports.updateValue("NEW", forKey: "dub")
if let eee = airports.updateValue("SSS", forKey: "DUB") {
    print("\(eee)")
}
print(airports)


if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName)")
}

if let removeValue = airports.removeValue(forKey: "DUB") {
    print(removeValue)
}
print("updated dic:\(airports)")


for code in airports.keys {
    print(code)
}
for name in airports.values {
    print(name)
}



