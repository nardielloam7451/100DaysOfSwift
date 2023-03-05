//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Anthony Nardiello on 3/4/23.
//

import SwiftUI


struct ContentView: View {
    @State private var useRedText = false
    
    var spells: some View{
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    var body: some View {
        Button("Hello, world!"){
            useRedText.toggle()
        }
        .foregroundColor(useRedText ? .red: .blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
