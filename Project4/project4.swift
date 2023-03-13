//
//  ContentView.swift
//  BetterRest
//
//  Created by Anthony Nardiello on 3/8/23.
//

//working with dates works the same...whether in swift or any other language. Remeber the usual tricks when working with dates.

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        //creating a stepper, which takes in a text value, the value to bind to, the range the value can be in, and the steps to increase value by.
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step:0.25)
        
        DatePicker("Please enter a Time", selection: $wakeUp, displayedComponents: .hourAndMinute)
            .labelsHidden()
    }
    
    //setting a range of dates
    func exampleDate(){
        let tomorrow = Date.now.addingTimeInterval(86400)
        let range = Date.now...tomorrow
    }
    
    func trivialExample(){
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
