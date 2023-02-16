import Cocoa

let songNames = ["Father Time", "Mother I Sober", "N95", "Worldwide Steppers", "Father Time", "Rich Spirit", "Die Hard", "Die Hard"]
print(songNames.count)

let uniqueSongNames = Set(songNames)
print(uniqueSongNames.count)
