//
//  ContentView.swift
//  voice
//
//  Created by MacBook Pro on 25/05/2022.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @State private var name : String = ""
    @State private var info : String = "How are You ?"
    var body: some View {
        VStack{
            TextField("name",text: $name)
                .padding()
            
            Button("Great"){
                let utterance = AVSpeechUtterance(string: "Good Morning \(name) \(info)")
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                utterance.rate = 0.59
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
