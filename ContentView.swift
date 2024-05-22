import SwiftUI

struct ContentView: View {
    @State var word = ""
    @State var firstLetter = ""
    @State var lastLetter = ""
    @State var numberOfLetters = ""
    @State var isWordEmpty = ""
    @State var uppercased = ""
    
    @State var find = ""
    @State var replace = ""
    @State var stretch1Answer = ""
    
    @State var definiteArticle = ""
    @State var noun = ""
    @State var verb = ""
    @State var adverb = ""
    
    @State var pigLatinWord = ""
    
    var body: some View {
        VStack {
            Group {
                Divider()
                Text("Strings Challenge")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.title)
                Divider()
            }
            
            TextField("Please enter a String", text: $word)
                .textFieldStyle(.roundedBorder)
            .padding()
            .onChange(of: word, perform: { value in
                //MARK: MVP 
                numberOfLetters = "\(word.count)"
                isWordEmpty = "\(word.isEmpty)"
                firstLetter = "\(word.first)"
                lastLetter = "\(word.last)"
                uppercased = "\(word.uppercased())"                     
            })
            Group {
                Text("MVP")
                    .frame(maxWidth: .infinity, maxHeight: 30)
                    .font(.title)
                    .underline()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Number of Letters: ")
                        Text("Is Word Empty: ")
                        Text("First Letter: ")
                        Text("Last Letter: ")
                        Text("All Uppercased: ")
                    }
                    VStack(alignment: .leading)  {
                        Text(numberOfLetters)
                        Text(isWordEmpty)
                        Text(firstLetter)
                        Text(lastLetter)
                        Text(uppercased)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding()
            Group {
                Text("Stretch #1")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .underline()
                Button("Test Stretch #1") {
                    //MARK: Stretch #1
                    stretch1Answer = word.replacingOccurrences(of: "\(find)", with: "\(replace)", options: .literal, range: nil) 
                }
                HStack {
                    Text("Replace: ")
                    TextField("letter", text: $find)
                        .autocorrectionDisabled(true)
                    Text(" With: ")
                    TextField("letter", text: $replace)
                        .autocorrectionDisabled(true)
                }
                .textFieldStyle(.roundedBorder)
                .padding()
                Text(stretch1Answer)
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            }
            Group {
                Text("Stretch #2")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .underline()
                Button("Test Stretch #2") {
                    //MARK: Stretch #2
                   
                    let wordArr = word.components(separatedBy: " ") 
                    definiteArticle = wordArr[0]
                    noun = wordArr[1]
                    verb = wordArr[2]
                    adverb = wordArr[3]
                }
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("Definite Article: ")
                        Text("Noun: ")
                        Text("Verb: ")
                        Text("Adverb: ")
                    }
                    
                    VStack(alignment: .leading)  {
                        Text(definiteArticle)
                        Text(noun)
                        Text(verb)
                        Text(adverb)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
            
            
            Group {
                Text("Stretch #3")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .underline()
                Button("Test Stretch #3") {
                    //MARK: Stretch #3
                    
                }
                
                Text(pigLatinWord)
                    .font(.title)
            }
            
            Spacer()
            Group {
                Image("MobileMakersEduNB")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
            }.padding()
        }
    }
}
