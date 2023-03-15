//
//  ContentView.swift
//  WordScramble
//
//  Created by Anthony Nardiello on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var newWord = ""
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    var body: some View {
        NavigationView{
            List{
                Section{
                    TextField("Enter your word", text: $newWord)
                        .autocapitalization(.none)
                }
                
                Section{
                    ForEach(usedWords, id: \.self){ word in
                        HStack{
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                    }
                }
            }.navigationTitle(rootWord)
                .onSubmit(addNewWord)
                .onAppear(perform: startGame)
                .alert(errorTitle, isPresented: $showingError){
                    Button("OK", role: .cancel){}
                } message: {
                    Text(errorMessage)
                }
        }
    }
    
    func addNewWord(){
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 0 else {return} //has to have at least one answer, otherwise it doesn't work.
        
        guard hasWordBeenUsed(answer) else{
            wordError(title: "Word used already", message: "Be More Original")
            return
        }
        
        guard isReal(answer) else{
            wordError(title: "Word not recognized", message: "You can't just make up a word")
            return
        }
        
        guard isPossible(answer) else{
            wordError(title: "Word not possible", message: "You can't spell that word from \(rootWord)")
            return
        }
        
        withAnimation{
            usedWords.insert(answer, at: 0)
        }
        newWord = ""
    }
    
    func startGame(){
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt"){
            if let startWords = try? String(contentsOf: startWordsURL){
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "silkworm"
                return
            }
        }
        
        fatalError("Could now load start.txt from bundle.")
    }
    
    func hasWordBeenUsed(_ checkWord: String) -> Bool{
        !usedWords.contains(checkWord)
    }
    
    func isPossible(_ word: String)-> Bool{
        var tempWord = rootWord
        
        for letter in word{
            if let pos = tempWord.firstIndex(of: letter){
                tempWord.remove(at: pos)
            } else{
                return false
            }
        }
        return true
    }
    
    func isReal(_ checkWord: String) -> Bool{
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: checkWord.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: checkWord, range: range, startingAt: 0, wrap: false, language: "en")
        
        return misspelledRange.location == NSNotFound
    }
    
    func wordError(title: String, message: String){
        errorTitle = title
        errorMessage = message
        showingError = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
