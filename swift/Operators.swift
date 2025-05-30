import Foundation
 
//var likeCount: Double = 5
//
//var commentCount: Double = 0
//
//var viewCount: Double = 100
 
//likeCount = 5 + 1

// Addition
//likeCount = likeCount + 1
//likeCount += 1

// Subtraction
//likeCount = likeCount - 1
//likeCount -= 1

// Multiplication
//likeCount = likeCount * 2
//likeCount *= 2

//  Division
//likeCount = likeCount / 2
//likeCount /= 2

// Oreder of operation dose matter !
    //PEDMAS

//likeCount = likeCount - 1 * 1.5
//likeCount = (likeCount - 1) * 1.5

var likeCount: Double = 4

var commentCount: Double = 2

var viewCount: Double = 100

likeCount += 1
 print(likeCount)

if likeCount == 5 {
    print("Post has 5 likes")
} else {
    print("Post dose NOT have 5 likes")
}

if likeCount != 5 {
    print("Post dose NOT have 5 likes")
}

if likeCount > 5 {
    print("Post has greater than 5 likes! ")
}

if likeCount >= 5 {
    print("Post has greater than or equal to 5 likes!")
}

if likeCount < 5 {
    print("Post has less than 5 likes!")
}

if likeCount <= 5 {
    print("Post has less than or equal to 5 likes!")
}

if (likeCount > 3) && (commentCount > 0) {
    print("Post has greater than 3 likes AND greater than 0 comment!")
} else {
    print("Post has 3 or less likes OR post has 0 or less comments!")
}

if (likeCount > 3) || (commentCount > 0) {
    print("Post has greater than 3 likes OR greater than 0 comment!")
} else {
    print("Post has 3 or less likes AND post has 0 or less comments!")
}
 
var userIsPremium = true
var userIsNew = false
 
if userIsNew && userIsNew {
    
}

if likeCount > 5 {
    print("Like count > 5")
} else if likeCount > 3 {
    print("Like counr > 3")
} else if userIsPremium {
    print("user is premium")
} else {
    print("elsr statememt executed")
}
