//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person: "Tom"))


func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "greet again"
    } else {
        return greet(person: person)
    }
}
print(greet(person: "Tim", alreadyGreeted: true))


func printAndCount(string: String) -> Int {
    print(string)
    return string.characters.count
}
func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}
printWithoutCounting(string: "hello")


func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        } }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")


func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))


func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
    // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
}
someFunction(1, secondParameterName: 2)
func someFunction2(_: Int, _: Int) {
    // 在函数体内，firstParameterName 和 secondParameterName 代表参数中的第一个和第二个参数值
}
someFunction2(2, 2)


func someFunction3(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // 如果你在调用时候不传第二个参数，parameterWithDefault 会值为 12 传入到函数体中。
}
someFunction3(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault = 6
someFunction3(parameterWithoutDefault: 4) // parameterWithDefault = 12
someFunction3(parameterWithoutDefault: 5)


// 一个函数最多只能拥有一个可变参数。
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(2, 4, 6)


//  输入输出参数不能有默认值，而且可变参数不能用inout标记。
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swap(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")


