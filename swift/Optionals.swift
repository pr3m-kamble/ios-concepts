
import Foundation

// There is always a value and that is Boolean
let myBool: Bool = false

// We dont know there is value , but if there is, it is Boolean
var myOtherBool: Bool? = nil
  
//print(myOtherBool)
//myOtherBool = true
//print(myOtherBool)
//myOtherBool = false
//print(myOtherBool)

// nil coalscing oprator

let newValue: Bool? = myOtherBool

let newValue2: Bool = myOtherBool ?? false

print("New value: \(newValue2.description)")


var myString: String? = "Hello, world!"
print(myString ?? "There is no value")

myString = "New Value"
print(myString ?? "There is no value")

myString = nil
print(myString ?? "There is no value")

//let newString = myString ?? "Default Value"


//--------------------------------------------------------------


var userIsPremium: Bool? = nil

@MainActor func checkIfUserIsPremium() -> Bool {
    return userIsPremium ?? false
}

@MainActor func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}

let isPremium = checkIfUserIsPremium2()

// if-let
// When if-let is successful , enter th closure

@MainActor func checkIfUserIsPremium3() -> Bool {
    // if there is value, then newvalue is equal that value
    if let newValue = userIsPremium {
        // here we have acces to the non optional value
        return newValue
    } else {
        return false
    }
}

@MainActor func checkIfUserIsPremium4() -> Bool {
    if let newValue = userIsPremium {
        
        return newValue
    }
    return false
}

@MainActor func checkIfUserIsPremium5() -> Bool {
    if let userIsPremium {
        
        return userIsPremium
    }
    return false
}


//Guard
// If guard is fail then enter the closure

@MainActor func checkIfUserIsPremium6() -> Bool {
    // Make Sure there is value
    // if there is, let newValue equal that value
    // else (otherwise) return out of the function
    guard let newValue = userIsPremium else {
        return false
    }
    // Here we have access of non-optional value
    return newValue
}
 
 @MainActor func cheakIfUserIsPremium7() -> Bool {
    guard  let userIsPremium else {
        return false
    }
    return userIsPremium
}

//--------------------------------------------------------------

var userIsNew: Bool? = true
var userDidCompleteOnboarding: Bool? = false
var userFavMovie: String? = nil

@MainActor func cheakIfUserIsSetup() -> Bool{
    if let  userIsNew , let userDidCompleteOnboarding, let userFavMovie {
        //if userIsNew == Bool AND
        // userDidCompleteOnboarding == Bool AND
        //userFavMovie == String
        return getUserStatus(userIsNew: userIsNew,
                             userDidCompleteOnboarding: userDidCompleteOnboarding,
                             userFavMovie: userFavMovie
                            )
    } else {
        //if userIsNew == Nil OR
        // userDidCompleteOnboarding == Nil OR
        //userFavMovie == Nil
        return false
    }
}

@MainActor func cheakIfUserIsSetup2() -> Bool{
    
    guard let  userIsNew , let userDidCompleteOnboarding, let userFavMovie else {
        //if userIsNew == Nil OR
        // userDidCompleteOnboarding == Nil OR
        //userFavMovie == Nil
        return false
    }
    //if userIsNew == Bool AND
    // userDidCompleteOnboarding == Bool AND
    //userFavMovie == String
    return getUserStatus(userIsNew: userIsNew,
                         userDidCompleteOnboarding:
                         userDidCompleteOnboarding, userFavMovie: userFavMovie
                        )
}

//Nested if-let
@MainActor func cheakIfUserIsSetup3() -> Bool{
    
    if let  userIsNew {
        //userIsNew == Bool
        if let userDidCompleteOnboarding{
            // userDidCompleteOnboarding == Bool
            if let userFavMovie {
                //userFavMovie == String
                return getUserStatus(userIsNew: userIsNew,
                                     userDidCompleteOnboarding:
                                     userDidCompleteOnboarding, userFavMovie: userFavMovie
                                    )
            } else {
                //userFavMovie == Nil
                return false
            }
        }else {
            // userDidCompleteOnboarding == Nil
            return false
        }
    }else{
       // userIsNew == Nil
        return false
    }
}

// Nested guard
@MainActor func cheakIfUserIsSetup4() -> Bool{
    
    guard let userIsNew else {
        // userIsNew == Nil
         return false
    }
    //userIsNew == Bool
    
    guard let userDidCompleteOnboarding else {
        // userDidCompleteOnboarding == Nil
        return false
    }
    // userDidCompleteOnboarding == Bool
    
    guard let userFavMovie else {
        //userFavMovie == Nil
        return false
    }
    
    return getUserStatus(userIsNew: userIsNew,
                         userDidCompleteOnboarding:
                         userDidCompleteOnboarding, userFavMovie: userFavMovie
                        )
}



func getUserStatus(userIsNew: Bool, userDidCompleteOnboarding: Bool, userFavMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnboarding {
        return true
    }
    return false
}


// Optional chaining

func getUserName() -> String? {
    return "test"
}

func getTitle() -> String {
    return "title"
}

func getUserData(){
    let username: String? = getUserName()
    
    // I will get the count if the username is not nil
    let count: Int? = username?.count
    
    let title: String = getTitle()
    // I will get count always
    let count2 = title.count
    
    // If username has value, and first charecter in username has value ,  then return the value of isLowrecased
    // Optional chaining
    let firstCharIsLowercased = username?.first?.isLowercase ?? false
    
    // I will get the count because i know 100% that username is not nil
    // This will crash your appication if username is nil!!
    let count3: Int? = username!.count

}
// -> Safely unwrap an optional
// nil coalascing
// if-let
// guad

// -> exliciptly unwrap an optional
//!

