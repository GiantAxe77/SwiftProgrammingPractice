//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)


reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
})
reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})
reversedNames = names.sorted(by: {s1, s2 in return s1 > s2})

reversedNames = names.sorted(by: {s1, s2 in return s1 > s2})
// 参数名称缩写
reversedNames = names.sorted(by: {$0 > $1})
// 运算符方法
reversedNames = names.sorted(by: >)


func someFunctionThatTakesAClosure(closure: () -> Void) {
    // 函数体部分
}
// 以下是不使用尾随闭包进行函数调用
someFunctionThatTakesAClosure(closure: {
    // 闭包主体部分
})
// 以下是使用尾随闭包进行函数调用
someFunctionThatTakesAClosure() {
    // 闭包主体部分
}


// 尾随闭包
let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
let tmp = makeIncrementer(forIncrement: 5)


let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven()
incrementBySeven()

incrementByTen()


// 闭包是引用类型
let alsoTen = incrementByTen
alsoTen()


// 逃逸闭包
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
// 非逃逸闭包
func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}
class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        someFunctionWithNonescapingClosure {
            x = 200
        }
    }
}
let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?() // 执行闭包
print(instance.x)


// 自动闭包
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let customerProvider = {customersInLine.remove(at: 0)}
print(customersInLine.count)

customerProvider()
print(customersInLine.count)

func serve(customer customerProvider1: () -> String) {
    customerProvider1()
}
print("before:\(customersInLine.count)")
serve(customer: {customersInLine.remove(at: 0)})
print("after:\(customersInLine.count)")


