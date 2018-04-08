//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


var emptyString = ""
if emptyString.isEmpty {
    print("empty")
}

var variableString = "String"
variableString += " "


let catCharacters: [Character] = ["C", "a", "t"]
let catString = String(catCharacters)
print(catString)


let exMark = "!"
var welcome = "hello"
welcome.append(exMark)
welcome.append(exMark)


let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"


//    • 转义字符 \0 (空字符)、 \\ (反斜线)、 \t (水平制表符)、 \n (换行符)、 \r (回车符)、 \" (双引 号)、 \' (单引号)。
//    • Unicode 标量，写成 \u{n} (u为小写)，其中 n 为任意一到八位十六进制数且可用的 Unicode 位码。
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
print(wiseWords)
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1f496}"


let eAcute = "\u{E9}"
let combinedEAcute = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"


let unusualMenagerie = "Koala ?, Snail ?, Penguin ?, Dromedary ?"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")


var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)")
word += "\u{301}"
let tmp = "\u{301}"
print(tmp)



let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 5)
greeting[index]


for index in greeting.characters.indices {
//    print("\(greeting[index])", terminator:"")
}


var welcomehello = "hello"
welcomehello.insert("!", at: welcomehello.endIndex)
welcomehello.insert(contentsOf: " world".characters, at: welcomehello.endIndex)
welcomehello.remove(at: welcomehello.index(before: welcomehello.endIndex))
print(welcomehello)

let range = welcomehello.index(welcomehello.endIndex, offsetBy: -6)..<welcomehello.endIndex
welcomehello.removeSubrange(range)
print(welcomehello)


let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("equal")
}


let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("eq")
}


let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent")
}


let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")


let dogString = "Dog\u{203C}\u{1F436}"
//for codeUnit in dogString.utf8 {
//    print("\(codeUnit)")
//}
for scalar in dogString.unicodeScalars {
    print(scalar.value)
}






		