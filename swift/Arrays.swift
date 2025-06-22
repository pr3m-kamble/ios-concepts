 import Foundation
// Arrays, Sets


var myTitle1: String = "Hello, World!"
var myTitle2: String = "Hello, World!"

// Tuple
func doSomething(value: (title1: String, title2: String)) {
    
}

doSomething(value: (myTitle1, myTitle2))
// Custom data model

struct TitleModel {
    var title1: String
    var title2: String
}
 
func doSomething2(value: TitleModel) {
    
}
doSomething2(value: TitleModel(title1: myTitle1, title2: myTitle2))

//-------------------------------------------------------------------------

let apple: String = "Apple"
let orange: String = "Orange"

let fruits1: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]
let fruits3: Array<String> = [apple, orange]

let mybool: [Bool] = [true, false, true, true, false]

func doSomthing3(value: [String]) {
    
}

var fruitsArray: [String] = ["Apple", "Orange"]

let count = fruitsArray.count
let firstElement = fruitsArray.first!
let lastElement = fruitsArray.last!

if let firstItem = fruitsArray.first {
    //first item
}

//fruitsArray = fruitsArray + [ "Banana", "Mango"]

//fruitsArray.append("Banana")
//fruitsArray.append("Mango")
fruitsArray.append(contentsOf: ["Banana", "Mango"])


// count   =  1 2 3 4
// indexes =  0 1 2 3
 
fruitsArray[1]

let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last
 
//fruitsArray.append("chiku")
//fruitsArray.insert("chiku", at: 2)
fruitsArray.insert(contentsOf: ["chiku","watermelon"], at: 2)
    //fruitsArray.remove(at: 3)

if fruitsArray.indices.contains(1){
    fruitsArray.remove(at: 1)
}

fruitsArray.removeAll()

print(fruitsArray)


struct ProductModel {
    let title: String
    let price: Int
}
 
var myProducts: [ProductModel] = [
    ProductModel(title: "Product1", price: 50),
    ProductModel(title: "Product2", price: 5),
    ProductModel(title: "Product3", price: 50),
    ProductModel(title: "Product4", price: 5),
    ProductModel(title: "Product5", price: 50),
    ProductModel(title: "Product6", price: 10)
]

var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]

print(finalFruits)

var fruitSets: Set<String> = ["Apple", "Orange", "Banana", "Apple"]

print(fruitSets)
