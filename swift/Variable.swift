import Foundation

// Constant
let someConstant: Bool = true

// Variable
var someVariable: Bool = true

// Cannot assign to value: 'someConstant' is a 'let' constant
//someConstant = false
 
someVariable = false

var myNumber = 1.4444
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 234582920
print(myNumber)
myNumber = 1.4444
print(myNumber)


// if statements

var userIsPremium: Bool = false

if userIsPremium == true {
    print("1 - User is premium ")
} else{
    print("1.1 - User is not premium")
}

if userIsPremium {
    print("2 - User is premium ")
}
 
if userIsPremium == false{
    print("3 - User is not premium")
}
 
if !userIsPremium {
    print("4 - User is not premium")
}
