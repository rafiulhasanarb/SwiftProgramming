import UIKit

var greeting = "Hello, playground"

var array1 = [1,2,3,4,5,6,7,8,9]
var array2 = [1,3,4,6,7,8,0,11,5]
var array3: [Int] = []

for number in array1 {
    if array2.contains(number) {
        if array3.contains(number) {
            print("Number already added")
        } else {
            array3.append(number)
        }
    }
}

print("Number existing in both array = ", array3)
