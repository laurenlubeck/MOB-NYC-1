import UIKit

class ViewController: UIViewController {
<<<<<<< HEAD
    

=======
>>>>>>> d0aeb078850e4995d3740540ef89afd5fda678e8
    // Functions of use for this exercise:
    // Translating a string to an integer: "1".toInt()
    // Getting the text from a text field: let text = textFieldName.text
    // Setting the text on a text label or text field: textLabelName.text = "some text"
    
    /*
    TODO: Create a text field, a label and a button in the storyboard's View Controller. Drag a new outlet from the label and text field to this file, then drag the 'touch up inside' event on the button into this file. When the button is clicked, make the text of the label display 'hello {whatever the text in the text field is}. Call an instructor/TA when you're done with this task.
<<<<<<< HEAD

    
    
    
=======
>>>>>>> d0aeb078850e4995d3740540ef89afd5fda678e8
    */
    
    /*
    TODO: Paste the fibonacci number function that you previously created into this class. Change the text box to use a numeric keypad for input. When the button is pressed, make the label print out the nth number in the fibonacci sequence (where n is the value of the text in the text field). Call an instructor/TA when you're done with this task.
    */
    
<<<<<<< HEAD
    
//    TODO: Drag a new text field into the view controller, and create an outlet for it here. Make both text fields use the numeric keypad. One text field represents an optional tip percentage (in integer form, e.g 20 = 20% tip), the other represents the total amount of a bill. When the button is pressed, make the label display both the total amount and tip amount (e.g. "total: $100, tip: $15"). Call an instructor/TA when you're done with this task.
    

    @IBOutlet weak var TipPercentage: UITextField!
    
    @IBOutlet weak var Label: UILabel!
  
    @IBOutlet weak var TotalBill: UITextField!
    
    
    @IBAction func Button(sender: AnyObject) {
  let answer = TipPercentage.text.toInt()! * TotalBill.text.toInt()!
    
        Label.text = " Total: \(answer)"
    
    }
    
    
=======
    /*
    TODO: Drag a new text field into the view controller, and create an outlet for it here. Make both text fields use the numeric keypad. One text field represents an optional tip percentage (in integer form, e.g 20 = 20% tip), the other represents the total amount of a bill. When the button is pressed, make the label display both the total amount and tip amount (e.g. "total: $100, tip: $15"). Call an instructor/TA when you're done with this task.
    */
>>>>>>> d0aeb078850e4995d3740540ef89afd5fda678e8
}