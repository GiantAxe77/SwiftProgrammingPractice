//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


// leetCode 7
/*
 class Solution {
 func reverse(_ x: Int) -> Int {
 var result = 0
 var digCount = 0
 
 let arr = calculcate(x: x)
 let firstDigit = arr[0] as! Int
 let firstYu = arr[1] as! Int
 digCount = arr[2] as! Int
 
 if firstDigit < 10 && firstYu < 10 {
 //            result = firstYu * 10 + firstDigit * 1
 result = firstYu * (digCount == 3 ? 100 : (digCount == 2 ? 10 : 1)) + firstDigit * 1
 return result
 }
 let arr1 = calculcate(x: firstYu)
 let secondDigit: Int = arr1[0] as! Int // 第二位
 let secondYu: Int = arr1[1] as! Int // 第二次余数
 var thirdDigit: Int = -1
 var lastDigit: Int = -1
 var ifLastDigitShang: Int = -1
 if secondYu < 10 {
 thirdDigit = arr1[1] as! Int
 } else {
 lastDigit = secondYu % 10
 ifLastDigitShang = secondYu / 10
 }
 
 if ifLastDigitShang != -1 {
 result = lastDigit * 1000 + ifLastDigitShang * 100 + secondDigit * 10 + firstDigit * 1
 } else {
 var num = 100
 if digCount == 4 {
 num = 1000
 }
 result = thirdDigit * num + secondDigit * num/10 + firstDigit * (num/100 == 1 ? 1 : 10)
 }
 
 
 
 return result;
 }
 
 func calculcate(x: Int) -> Array<Any> {
 let shang10 = x / 10;
 let shang100 = x / 100;
 let shang1000 = x / 1000;
 let arr = [shang10, shang100, shang1000]
 
 var firstDigit: Int = -1
 var firstYu: Int = -1
 //        var flag: Int = -1
 var count: Int = -1
 
 for i in arr {
 switch i {
 case 1,2,3,4,5,6,7,8,9:
 firstDigit = i
 if i == shang10 {
 firstYu = x % 10
 count = 2
 } else if i == shang100 {
 firstYu = x % 100
 count = 3
 } else {
 firstYu = x % 1000
 count = 4
 }
 break
 default:
 continue
 }
 }
 return [firstDigit, firstYu, count] //[第一位，余数, 位数个数]
 }
 
 }
 */


class Solution {
    // leetcode 7
    func reverse(_ x: Int) -> Int {
        var isBelowZero = 1
        var result = 0
        var num = x
        if x < 0 {
            isBelowZero = -1
            num = -x
        }
        
        while num > 0 {
            if result > (Int(Int32.max) - num % 10) / 10 {
                return 0
            }
            result = result * 10 + num % 10
            num = num / 10
        }
        
        return result * isBelowZero
    }
    

    
    // leetcode 9
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        
        var divider = 1
        while divider * 10 <= x { // 找出最大的除数,和x位数相同
            divider *= 10
        }
        
        var target = x
        while divider >= 10 {
            if target / divider != target % 10 { // 比较最高位和最低位是否相同
                return false
            }
            
            target = (target % divider) / 10 // 去掉最高位和最低位剩下的数
            divider = divider / 100 // 除数减少两个0(最高位和最低位)
        }
        
        return true
    }
    
    
    
    // leetcode 13
    func romanToInt(_ s: String) -> Int {
//        I - 1
//        V - 5
//        X - 10
//        L - 50
//        C - 100
//        D - 500
//        M - 1000
        var result = 0
        
        
        return result
    }
}

Solution().reverse(-2147447412)
print(Int32.max)

Solution().isPalindrome(121)


