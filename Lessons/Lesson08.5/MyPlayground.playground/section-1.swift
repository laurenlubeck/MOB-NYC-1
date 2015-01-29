// Playground - noun: a place where people can play

import UIKit

// Arrays
var foo: [String] = []
var zing: Array<String> = []
var bar = ["boooooooooo!"]

// Dictionaries
var baz: [String: String] = [:]
var bif = ["foo": "bar"]
var ping: Dictionary<String, String> = [:]

foo.append("hey!")

var zoom: [[String: String]] = []

// can also right like this...
var zoom2: [Dictionary<String, String>] = []


// note dictionaries do not format based on order
let todos = [
    [
        "name": "groceries",
        "status": "done",
        "date": "today"
    ],
    [
        "name": "laundry",
        "status": "todo",
        "date": "tomorrow"
    ]
]

todos[0]
todos[1]

todos[0]["name"]

