import Foundation


/*
 
  * Object Oriented Programming *
 
 During the life the app , we create and destroy objects
 - Create = initialize (init) = Allocation (add to memory)
 - Destroy = deinitialize (Deinit) = Dealloction ( Remove from memory)
 
 Automatic Refrence Counting (ARC)
 - A live count of the number of objects in memory
 -Create 1 object, count goes up by 1
 -Create 2 object, count goes up by 2
 -Destroy 1 object, count goes Down by 1

 - The more object in memory, the slower the app performs
 - We want to keep the ARC count as low as possible
 - We want crete the objet only when we need them
 - And destroy them as soon as we no longer need them
 - For exp. , if an app as two screen and user is moving from screen 1 to screen 2. We only want to
   allocate screen only when we need it (ie. when user clicks a butten to redirect to screen 2). when we get
   screen 2 , we may deallocate screen 1.
 
 There are two types of memory
 - Stack and Heap
 - Only objrct in thr Heap are counted towards ARC
 
 Advance Info here:
 https://youtu.be/-JLenSTKEcA?si=Hc-2a_bGGbZsBu27
 
 Object in the Stack
  - String, Bool, Int, most basic type
  - NEW: Struct, Enum
 
 Object in Heap
  - Fuction
  - New: Class, Actors
 
  iPhone is a "Multi-Threaded environment"
  there are multiple "thread" or "engines" running simultanaously
  Echa thread has a Stack
  But there is only 1 Heap for all threads
  
  Therfore:
  - Stack is Faster, Lower memory footprint, preferable
  - Heap is Slower, higher memory footprint, Risk of threading issue
 
 Value vs Reference types
 - Objects in the Stack are 'Value' types.
 - When you edit Value type, you creat copy of it with new data.
 -
 - Objects in the Heap are 'Reference' types.
 - When you edit Reference type,  you edit the object the you are referancing. The 'Referance is
   called 'Pointer' because it 'Points' an object in the Heap (in memory)
   
 
 */

struct myFiratObject {
    let title: String = "Hello, World!"
}

class mySecondObject {
    var title: String = "Hello, World!"
}


// Class Vs Struct explained to 5 yr old

// Imagine a school and in the school there are Classrooms.
// Within each class , there are quizzes.
// During the day, the teacher will hand out many different quizzes to different classes. the students will answer thw quizzes and return them back to teacher
// "school"  = App
// "classroom" = class
// "quiz" = Struct

// In this example,  We have Classroom and there are many action that occure inside the classroom.
// In code, we created class and can perform actions within the class.

// In this exampe, there are many different types of quizzes. The teacher hands out he quizzes and the students take the quizzes and return them back to teacher.
// In code , we create many structs ans pass them around the app with ease.

// Note:
// this Metaphor is NOT perfect :)
// Technical a "quiz" can be class, etc

// We want to use a Class for thing like:
// "Manager", "DataService", "Service", "Factory", "ViewModel"
// Object that we create and want to perform action inside .

// We want to use a Struct for thing like 
