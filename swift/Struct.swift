import Foundation

// Structs are fast!
// Structs are stored in Stack (memory)
// Objects in the Stack are value types
// Value types are copied ans muteted



struct Quiz {
   let title: String
   let dateCreated: Date
    let isPremium: Bool?
    
    // Struct have an implicit init
//    init(title: String, dateCreated: Date) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now) {
//        self.title = title
//        self.dateCreated = dateCreated
//    }
    
//    init(title: String, dateCreated: Date = .now, isPremium: Bool?) {
//        self.title = title
//        self.dateCreated = dateCreated
//        self.isPremium = isPremium
//    }
    
    init(title: String, dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
    
}

let myObject: String = "Hello, World!"

//let myQuiz: Quiz = Quiz(title: "Quiz1", dateCreated: .now)
//let myQuiz: Quiz = Quiz(title: "Quiz1")
//let myQuiz: Quiz = Quiz(title: "Quiz1", isPremium: nil)
let myQuiz: Quiz = Quiz(title: "Quize1", dateCreated: nil, isPremium: false)

print(myQuiz.title)


//--------------------------------------------------------------------------------

// "Immutable Stuct" = all "let" constant = NOT mutable = cannot mutate it
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Prem", isPremium: false)
 
@MainActor func makeUserPremium() {
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}

//makeUserPremium()

// "Mutable Struct"
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Prem", isPremium: false)

@MainActor func makeUserPremium2() {
    print(user2)
    // "mutete " the Stuct
    user2.isPremium = true
    print(user2)
}

makeUserPremium2 ()

//--------------------------------------------------------------------------------

// "immutable Struct"
 struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func makeUserPremium(newValue: Bool) -> UserModel3 {
        UserModel3(name: name, isPremium: newValue)
    }
}
var user3: UserModel3 =  UserModel3(name: "Prem", isPremium: false)

user3 = user3.makeUserPremium(newValue: true)

makeUserPremium()

//--------------------------------------------------------------------------------

// "muteble struct"

struct UserModel4 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func makeUserPremium() {
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool) {
        isPremium = newValue
    }
}
var user4 = UserModel4(name: "Prem", isPremium: false)
user4.makeUserPremium()
user4.updateIsPremium(newValue: true)

struct User5 {
    let name: String
    let isPremium: Bool
    let isNew: Bool
    //
    //
    //
    //
    //
    
}
