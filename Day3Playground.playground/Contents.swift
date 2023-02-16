import Cocoa

//working with arrays in Swift
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 11.1, 15.6, 39.9]

//standard array nominclature (index starts at 0)

beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")  //can use similar values in different index positions.

var scores = Array<Int>() //has generics for Arrays, good to know
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

//adding new values to the array
var albums = Array<String>()
albums.append("DAMN.")
albums.append("Good Kidd mAAd City")
albums.append("Section.80")

//count
albums.count

//removing from the array (both singular and all)
albums.remove(at: 2)
albums.removeAll()

//can show whether an array contains the value you are looking for
let bondMovies = ["Casingo Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

//can also sort by using the .sorted() function or reverse them by using .reverse()
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()//returns a new type called ReverseCollection, keeps the original reference, which is nice!!

//Using Dictionaries in Swift
let employee = [
    "name": "Dave Smith",
    "job": "Singer",
    "location": "New York"
]
//when using strings as keys, xCode will give you an interesting warning messages
print(employee["name", default: "Unkown"])
print(employee["job", default: "Unkown"])
print(employee["location", default: "Unkown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unkown"])

//unlike in python, you can create a generic dictionary with the following nomenclature
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 208

//can overwrite values, Examples:
heights["LeBron James"] = 212

//Using Sets (No Duplicates, and doesn't remember order)
var actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(actors)
//adding to a set,
actors.insert("Tom Holland")
actors.insert("Dolly Parton")

//sets are good when you need to store things for quick retreival, or you need to make sure there are no duplicates in your data.

//using enumerations in Swift
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

//another way you can write enums is by using , between each value. Ex: monday, tuesday, wednesday, thursday, friday
//can also write the different values like .valueName. Example: day = .tuesday






