import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    @State var tapCount = 0//this allows us to get away with creating a value that is being changed within a struct that could be assigned to a constant. we are simply tying it to the state of the application. This is for simple properties, only kept in one view
    @State private var name = ""
    var body: some View {
        //navigation view is going to be removed in the next version of ios, so we are going with Navigation Stack for now
        NavigationStack{
            Form {
                Section { //use of sections can be used inside of a form to any number of items greater than 10
                    Picker("Select your Student", selection: $selectedStudent){
                        ForEach(students, id:\.self){//shows how to go through, and display an array using the foreach command, also showcases the id:\.self command,
                            //id:\.self will identify each unique item with an array. 
                            Text($0)
                        }
                    }
                }
                //creating binding a state to a ui control
                TextField("Enter your name", text: $name)//creates a two-way binding, so it will read the value, and write it back
                Group { //the other way to give ourselves the
                    Text("Your Name is \(name)")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                
                Button("Tap Count: \(tapCount)"){
                    tapCount += 1
                }//creating a button within swiftUI
            }.navigationTitle("SwiftUI")
                .navigationBarTitleDisplayMode(.inline)//allows us to dictate the font we want to use within the swift ui view. 
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
