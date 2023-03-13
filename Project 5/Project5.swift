//if your list is purely dynamic can also use the syntax List(iteration){}
        List{
            Section("Section 1"){
                Text("Static Row 1")
                Text("Static Row 2")
                
            }
            
            Section("Section 2"){
                ForEach(0..<5){
                    Text("Dynamic row \($0)")
                }
            }
            
            Section("Section 3"){
                Text("Static row 3")
                Text("Static row 4")
                
                //loading a bundle into our app code
            }
        }.listStyle(.grouped)
    }
    
    func loadFile(){
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: ".txt"){
            if let fileContents = try? String(contentsOf: fileURL){
                let split = fileContents.split(separator: " ")
            }
        }
    }
    
    func componentsTest(){
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        let newInput =  """
                        a
                        b
                        c
                        """
        let newLetters = newInput.components(separatedBy: "\n")
        let letter = newLetters.randomElement()
        
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }