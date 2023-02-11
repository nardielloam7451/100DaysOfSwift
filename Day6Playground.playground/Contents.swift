import Cocoa

//doing loops within swift
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

//looping over a range

for i in 1...12{
    print("5 x \(i) is \(5 * i)")
}

//for looping over a range, but not including the final value
for i in 1..<5{
    print("Counting from 1 up to 5: \(i)")
}

//using an underscore within a loop, good for when you don't need the value for a loop
var muda = "muda"
for _ in 1...5 {
    muda += "muda"
}
print(muda)

//using while loops
var countdown = 10
while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")
//doing random numbers within swift
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)
var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical hit!")

//using break and continue within swift
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false{
        continue
    }
    print("Found picture: \(filename)")
}
