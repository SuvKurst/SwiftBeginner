import UIKit

class Patient
{
    var name: String
    var age: Int
    var gender: Gender
    enum Gender{ case male, female }
    init(name: String, age: Int, gender: Gender)
    {
        self.age = age
        self.gender = gender
        self.name = name
    }
}

struct Queue <T>
{
    private var elements : [T] = []
    
    mutating func addinig(_ element: T)
    {
        elements.append(element)
    }
    mutating func removing() -> T?
    {
        return elements.removeFirst()
    }
    
    func filter(predicate: (T) -> Bool) -> Queue<T>
    {
        var newQueue = Queue<T>()
        for element in elements
        {
            if predicate(element)
            {
                newQueue.addinig(element)
            }
        }
        return newQueue
    }
}



var queue = Queue<Patient>()

queue.addinig(Patient(name: "Michail", age: 25, gender: .male))
queue.addinig(Patient(name: "Olga", age: 38, gender: .female))
queue.addinig(Patient(name: "Eugeniy", age: 16, gender: .male))
queue.addinig(Patient(name: "Araslan", age: 77, gender: .female))
queue.addinig(Patient(name: "Menhutep", age: 970, gender: .male))

var agedQueue = queue.filter(predicate: {(pat: Patient) -> Bool in pat.age >= 40})
var genderQueue = queue.filter(predicate: {(pat: Patient) -> Bool in pat.gender == .male})


