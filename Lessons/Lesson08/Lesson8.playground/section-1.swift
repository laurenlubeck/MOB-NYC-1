// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// ARRAYS sum of array using .reduce
// the sum of an array

let numbers = [0, 1, 2, 3, 4]
func addTwoInts(i1: Int, i2: Int) -> Int {
    return i1 + i2
}

numbers.reduce(0, combine: addTwoInts)

// strings compiled with .reduce

let strings = ["Some", "collection", "of", "strings!"]

func concat(s1:String, s2: String) -> String {
    return s1 + " " + s2
}

concat("hi", "there")

strings.reduce("Function!", combine: concat)

// using a closure rather than a function
let closureConcat = {(s1: String, s2: String) -> String in
    return s1 + " " + s2}
strings.reduce("Closure!", combine: closureConcat)

