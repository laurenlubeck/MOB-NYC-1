////// Playground - noun: a place where people can play
////// Lesson 04
////
////// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.
////
//
import Foundation
//
//// TODO: Write a function that prints out "Hello world!" 10 times
//func helloWorld () {
//var cycles = 10
//var counter = 0
//while counter < cycles {
//counter = counter + 1
//    println("Hello World!")
//}
//helloWorld()
//
//
//// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times
//func hitLine () {
//    for Index in 0...19 {
//        println("Hit This Line \(Index) times!")
//    }
//}
//hitLine()
//
//// or you can do it with another type of for loop
//
//func hitThis() {
//    for var count = 0; count < 20; ++count{
//        println("hit this line |count) times!")
//    }
//}
//hitThis()
////
//// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"
//
//func SayHello(Name: String) {
//    println("Hello \(Name)!")
//}
//SayHello("Lauren")
//// prints "Hello Lauren!"
//
//SayHello("Sally")
//// prints "Hello Sally!"
//
//// To say hello to 2 people
//func helloworldtwopeople(nameOne: String, nameTwo: String) {
//    println("Hello \(nameOne) and \(nameTwo)!")
//}
//helloworldtwopeople("Lauren", "Suki")
//
//
//func formattedHelloWorldTexttoName(name: String) -> String {
//    return "Hello \(name), have a great class!"
//}
//
//println(formattedHelloWorldTexttoName("Lauren") + "Woof!")
//var formattedText = formattedHelloWorldTexttoName("Lauren")
//println(formattedText)
//
//
////
//func LengthOfNames(nameOne:String, nameTwo: String) -> (Int, Int) {
//    return (countElements(nameOne), countElements(nameTwo))
//}
//var length = LengthOfNames("Lauren", "Suki")
//println(length.0)
//println(length.1)
//
//
//// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"
//func SayHelloValue(value: String?) {
//    if let value = value {
//        println("Hello \(value)!")
//    } else {
//        println("Hello World!")
//    }
//}
//SayHelloValue("Sally")

// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

func fibNumber(n: Int) -> Int {
    var n1 = 0
    var n2 = 1
    var n3 = 1
    if n <= 0 {
        return 0
    }
    if n == 1 {
        return n1
    } else if n == 2 {
        return n2
    } else if n == 3 {
        return n3
    } else {
        for counter in 4...n {
            n1 = n2
            n2 = n3
            n3 = n1 + n2
    }
        return n3
}

fibNumber(8)


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

    func fibSum(index: Int) -> Int {
     var sum = 0
        for i in 1...index {
            sum += fibNumber(i)
        }
        return sum
}

fibSum(6)


// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).
// float is for decimals, int is for integers
//
//func billAmountAndTip (billAmount: Float) -> Float {
//var
//    var Total = billAmount + Tip
//    var Tip = billAmount * 0.2
//    for Total in billAmount {
//
//    }
//    return "Your Bill is \(BillAmount), and suggested tip of 20% is \(TipAmount)!  With the tip, the total is \(Total)"
//}
//
//
////
////// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.
//let CatString = "Cat"
//let DogString = "Dog"
//var Animals = DogString + CatString
//println


// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.



// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).


// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings


// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.



// Function that prints a random number using rand()
//func ToDoOne() {
//    var Number: Int32 = rand()
//    println(Number)
//}
//ToDoOne()

// Function that returns a random number that returns an int
//func returnRandNum() -> Int {
//    // return Int(rand())
//    println("hello")
//}
//
//let randomNumber = returnRandNum()
//
//// function that takes two numbers and return the product
//func ToDoThree(NumberOne: Int, NumberTwo: Int) -> Int {
//    return NumberOne * NumberTwo
//}
//
//var result = ToDoThree(4, 2)
//println(result)
//
//// Function that
//func randomTwo(firstNumber: Int, SecondNumber: Int) -> (Int, Int) {
//    return (firstNumber * Int(rand()), SecondNumber * Int(rand()))
//}
//
//
//// Does a string have the lowercase letter 'a'
//func LetterInString(str: String) ->Bool {
//    for character in str {
//        if character == "a" {
//            return true
//        }
//}
//    return false
//
//println("minnie")
//println("annie")
//
//
//
