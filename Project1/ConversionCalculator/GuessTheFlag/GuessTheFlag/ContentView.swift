//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Anthony Nardiello on 3/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var correctScore = 0
    @State private var totalScore = 0
    @State private var correctCountry = ""
    @State private var reset = false
    @State private var resetTitle = ""
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            VStack{
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                Spacer()
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .foregroundColor(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3){
                        number in Button{
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                    
                }.frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: \(correctScore) out of \(totalScore)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
                
            }.padding()
            .alert(scoreTitle, isPresented: $showingScore){
                Button("Continue", action: askQuestion)
            } message: {
                if(scoreTitle == "Wrong"){
                    Text("\(correctCountry) and your current score is \(correctScore)")
                } else{
                    Text("Your Current Score is \(correctScore)")
                }
            }.alert(resetTitle, isPresented: $reset){
                Button("Reset", action: resetGame)
            } message:{
                Text("Your final score is \(correctScore) out of \(totalScore). Want to play again?")
            }
        }
    }
    
    func flagTapped(_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Correct"
            correctScore += 1
            totalScore += 1
        } else{
            scoreTitle = "Wrong"
            correctCountry = "That's the flag of \(countries[number])"
            totalScore += 1
        }
        if(totalScore == 8){
           reset = true
           resetTitle = "Game Over"
        }else{
            showingScore = true
        }
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func resetGame(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        correctScore = 0
        totalScore = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
