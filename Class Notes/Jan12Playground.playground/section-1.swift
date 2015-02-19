// Playground - noun: a place where people can play

import UIKit
import Foundation

var view = UIView(frame:CGRect(x:0, y:0, width: 100, height: 100))
view.backgroundColor=UIColor.purpleColor()


class Human {
    var name: String?
    var age: Int?
    var gender: String?
}

var lauren = Human()
// define the variables for this instance of the Human class
lauren.name = "Lauren"
lauren.age = 24
lauren.gender = "Female"

var sean = Human()
sean.name = "Sean"
sean.gender = "Male"
sean.age = 45




class Animal {
    var species: String
    // can pass parameters into initialization function
    init(theSpecies: String) {
    species = theSpecies
    }
    
    func prettyPrint() -> String {
        return "some boring generic species"
    }
}

func prettyPrintAnimal(animal: Animal) {
    println("I love \(animal.species)")
}






var fido = Animal(theSpecies: "Dog")
fido.species


class Dog: Animal {
    var name: String?
// if you want to override something in the superclass...
    override init() {
        super.init()
        species = "Dog"
    }
// can also override the functionality of the superclass
    override func prettyPrint() -> String {
        return "Some exciting dog!"
    }

}


var rover = Dog()
rover.name = "Rover"
println(rover.name)
println(rover.species)

