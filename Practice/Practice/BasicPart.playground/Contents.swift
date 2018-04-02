//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let a = 1.25e2
let a1 = 1.25e-2

let oneMillion = 1_000_000

// error
//let tooBig: Int8 = Int8.max + 1

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("code is \(statusCode)")
print("\(http404Error.0)")

let (justStatusCode, _) = http404Error

let http200Status = (statusCode: 200, desc: "OK")
print("\(http200Status.statusCode)")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
var surveyAnswer: String?

let possibleString: String? = "An optional string"
let forcedString: String = possibleString!

