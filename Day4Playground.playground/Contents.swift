import Cocoa

//Type annotations
let surname: String = "Lasso"
var score: Int = 0

let playerName: String = "Roy"
let luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true

//using type annotations with Dictionaries, Arrays, and Sets
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@nardielloam"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])

var soda: [String] = ["Coke", "Pepsi", "Mtn Dew"]
var teams: [String] = [String]() //for using type annotation with empty arrays
var cities: [String] = []
var clues = [String]()

//using type annotation with enums

enum UIStyle{
    case light, dark, system
}

var style = UIStyle.light
style = .dark

