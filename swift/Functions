
import Foundation

func myFirstFunction() {
    print("first fuction")
    myThirdFunction()
}

func mySecondFunction() {
    print("second fuction")
    myFirstFunction()
 
}

func myThirdFunction() {
    print("third fuction")
}
mySecondFunction()


func getUserName(){
    let userName = "Prem"
    print(userName)
}

getUserName()

func getUserName() -> String {
    let userName: String = "Prem"
    return userName
}

func cheakIfUserIsPremium() -> Bool {
    return false
}

let name: String  = getUserName()
print(name)


//--------------------------------------------------------------------------------------------

showFirstScreen()

func showFirstScreen(){
    var userDidCompleteOnBoard: Bool = true
    var userProfileIscreated: Bool = true
    let status = cheakUserStatus(didCompleteOnBoard: userDidCompleteOnBoard, profileIsCreated: userProfileIscreated)
    
    if status == true{
        print("Show Home Screen")
    } else {
        print("Show Onboarding Screen")
    }
}

func cheakUserStatus(didCompleteOnBoard: Bool, profileIsCreated: Bool) -> Bool{
    if didCompleteOnBoard && profileIsCreated {
         return true
    } else {
         return false
    }
}
//--------------------------------------------------------------------------------------------
 
let newValue = doSomething()

func doSomething() -> String {

    var title: String = "Avenger"
     // if titlle is equal to Avanger
    if title == "Avenger" {
        return "Marvel"
    } else {
        return "NOT Marvel"
    }

}

cheakIfTitleIsAvenger()

func cheakIfTitleIsAvenger() -> Bool{
    
    var title: String = "Avenger"
     // make sure title == Avenger
    guard title == "Avenger" else {
        return false
        
    }
    
   return true
}

 cheakIfTitleIsAvenger1()
func cheakIfTitleIsAvenger1() -> Bool{
    
    var title: String = "Avenger"

    if title == "Avenger"{
        return true
    } else{
        return false
    }
}


// Cslculated variables are basically fuction
// genrally good for when you dont need to pass data into fuction

let num1 = 3
let num2 = 5

func calculateNumber() -> Int {
    return num1 + num2
}

func calculateNumber(val1: Int, val2: Int) -> Int {
    return val1 + val2
}

func calculteNumber: Int{
    return num1 + num2
}
