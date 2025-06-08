import Foundation

// Rule of Thumb :
// We want everything private as possible
//This make your code easier to read/debug and is good coding practice

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFav: Bool
    
    func updateFavStatus(newValue: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFav: newValue)
    }
    
    mutating func updateFavStatus2(newValue: Bool) {
        isFav = newValue
    }
}

enum MovieGenre {
    case Horror, Action, Comedy
}

class MovieManager {
    
    // public = get or set everyware
    public var movie1 = MovieModel(title: "Avatar", genre: .Action, isFav: false)
    // private = only in closer
    private var movie2 = MovieModel(title: "Step Brothers", genre: .Comedy, isFav: false)
    
    private(set) var movie3 = MovieModel(title: "Avanger", genre: .Action, isFav: true)
    
    func updateMovie3(isFav: Bool){
        movie3.updateFavStatus2(newValue: isFav)
    }
}
 
let Manager = MovieManager()

let someValue = Manager.movie3

//Manager.movie1 = Manager.movie1.updateFavStatus(newValue: true)

//Manager.movie3.updateFavStatus2(newValue: true)

Manager.updateMovie3(isFav: false)

print(Manager.movie3)


// Version - 1
// We can Get and Set the value
// too Piublic
let movie1 = Manager.movie1
Manager.movie1 = Manager.movie1.updateFavStatus(newValue: true)

//version - 2
// We can't Get or Set the value from outside the object
// "cannot access"
//let movie2 = Manager.movie2
//Manager.movie2 = Manager.movie2.updateFavStatus(newValue: true)

// version - 3
// we cant get or set the value from outside of object
// best practice
let movie3 = Manager.movie3
//Manager.movie3 = Manager.movie3.updateFavStatus(newValue: true)
Manager.updateMovie3(isFav: false)


// Note: private & public are by far the most common but there are many other
//
// open
//public
// internal
//fileprivate
// private
//
