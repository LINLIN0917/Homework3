//
//  ContentView.swift
//  Homework3
//
//  Created by Linlin on 2021/3/27.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @Binding var showContent: Bool
    @State private var i = 0
    @State private var j = 0
    
    
    
    
    
    var body: some View {
        
        ZStack{
            VStack{
                HStack{
                    ForEach(foods[i].char, id: \.self) { (index) in
                        StartPoint(vocabulary: (index))
                    }
                }
                VStack{
                    Spacer()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack{
                        ForEach(0 ..< foods[i].char.count) { item in
                            EndPoint()
                        }
                    }
                    Button(action: {showContent = false}, label: {
                        
                    })
                }
            }
            /*.background(Image(foods[i].chineseName)
             .resizable()
             .scaledToFit())*/
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showContent: .constant(true))
            .previewLayout(.fixed(width: 896, height: 414))
    }
}
struct StartPoint: View {
    var vocabulary: String
    @State private var offset = CGSize.zero
    @State private var newPosition = CGSize.zero
    @State private var location = CGRect.zero
    
    
    var body: some View {
        Button(action: {
                let utterance =  AVSpeechUtterance(string: vocabulary)
                let synthesizer = AVSpeechSynthesizer()
                                utterance.voice = AVSpeechSynthesisVoice(language: "ko-KR")
                synthesizer.speak(utterance)}, label: {
            Text(vocabulary)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(100)
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(radius: 10)
                .offset(offset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            offset.width = newPosition.width + value.translation.width
                            offset.height = newPosition.height + value.translation.height
                        })
                        .onEnded({ value in
                            newPosition = offset
                        })
                )
                
                
                
        })
            
        
    }
}
struct EndPoint: View {
    var body: some View {
        Color.gray
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(100)
            .opacity(0.3)
    }
}
