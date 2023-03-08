//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Anthony Nardiello on 3/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var playerChoice = ""
    @State private var shouldWin = Bool.random()
    @State private var currentPoints = 0
    @State private var totalPoints = 0
    @State private var scoreTitle = ""
    @State private var resetTitle = "Game Over"
    @State private var showingScore = false
    @State private var reset = false
    
    @State private var computerChoice  = Int.random(in: 0...2)
    
    @State private var computerOptions = ["Rock", "Paper", "Scissors"]
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                Text("Play Rock, Paper, Scissor")
                    .foregroundColor(.white)
                    .font(.subheadline.weight(.heavy))
                Spacer()
                if(shouldWin){
                    Text("Make the play that would beat \(computerOptions[computerChoice]) ").foregroundColor(.white)
                        .font(.subheadline.weight(.semibold))
                }else{
                    Text("Make the play that would lose to \(computerOptions[computerChoice])")
                        .foregroundColor(.white)
                        .font(.subheadline.weight(.semibold))
                }
                Text("Current Score: \(currentPoints)")
                    .foregroundColor(.white)
                Spacer()
                HStack{
                    Button("Rock"){
                        playerChoice = "Rock"
                        rockPaperScissors(playerChoice)
                    }.foregroundColor(.white)
                    Button("Paper"){
                        playerChoice = "Paper"
                        rockPaperScissors(playerChoice)
                    }.foregroundColor(.white)
                    Button("Scissors"){
                        playerChoice = "Scissors"
                        rockPaperScissors(playerChoice)
                    }.foregroundColor(.white)
                }
            }
        }.alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: choices)
        } message: {
            if(scoreTitle == "Correct Choice"){
                Text("Congratulations! You won this round!!")
            } else{
                Text("I'm Sorry. You made the wrong choice.")
            }
        }.alert(resetTitle, isPresented: $reset){
            Button("Restart", action: resetGame)
        } message: {
            Text("Congratulations! Your final score was \(currentPoints)")
        }
    }
    
    func rockPaperScissors(_ player: String){
        if(shouldWin){
            if(computerOptions[computerChoice] == "Rock" && playerChoice == "Paper"){
                scoreTitle = "Correct Choice"
                currentPoints += 1
                totalPoints += 1
            } else if (computerOptions[computerChoice] == "Paper" && playerChoice == "Scissors"){
                scoreTitle = "Correct Choice"
                currentPoints += 1
                totalPoints += 1
            }else if(computerOptions[computerChoice] == "Scissors" && playerChoice == "Rock"){
                scoreTitle = "Correct Choice"
                currentPoints += 1
                totalPoints += 1
            } else{
                scoreTitle = "Incorrect Choice"
                totalPoints += 1
            }
        } else{
            if(computerOptions[computerChoice] == "Rock" && playerChoice == "Paper"){
                scoreTitle = "Incorrect Choice"
                totalPoints += 1
            } else if (computerOptions[computerChoice] == "Paper" && playerChoice == "Scissors"){
                scoreTitle = "Incorrect Choice"
                totalPoints += 1
            }else if(computerOptions[computerChoice] == "Scissors" && playerChoice == "Rock"){
                scoreTitle = "Incorrect Choice"
                totalPoints += 1
            } else{
                scoreTitle = "Correct Choice"
                currentPoints += 1
                totalPoints += 1
            }
        }
        if(totalPoints == 10){
            reset = true
            resetTitle = "Game Over"
        } else {
            showingScore = true
        }
    }
    
    func choices(){
        shouldWin.toggle()
        computerChoice = Int.random(in: 0...2)
    }
    
    func resetGame(){
        totalPoints = 0
        currentPoints = 0
        shouldWin = Bool.random()
        computerChoice = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
