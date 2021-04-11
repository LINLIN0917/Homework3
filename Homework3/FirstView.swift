//
//  FirstView.swift
//  Homework3
//
//  Created by Linlin on 2021/4/4.
//

import SwiftUI

struct FirstView: View {
    @State private var showContent = false
    @State private var showChart = false
    var body: some View {
        ZStack{
            Image("backGround")
                .resizable()
                .scaledToFill()
                .opacity(0.6)
        VStack{
            TitleView(name: "韓國美食知多少?")
            Spacer()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Button(action: {showContent = true}, label: {
            ButtonView(name: "遊戲開始")
        })
            .fullScreenCover(isPresented: $showContent, content: {
                ContentView(showContent: $showContent)
            })
            Spacer()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Button(action: { showChart = true}, label: {
            ButtonView(name: "查看排名")
        })
            .fullScreenCover(isPresented: $showChart, content: {
                ChartView(showChart: $showChart)
                
            })
        }
            
    }
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FirstView()
                .previewLayout(.fixed(width: 896, height: 414))
        }
    }
}

struct TitleView: View {
    let name: String
    var body: some View {
        Text(name)
            .bold()
            .font(.title)
            .colorMultiply(.black)
            .frame(width: 900, height: 60)
            .background(Color.white)
            .padding()
    }
}

struct ButtonView: View {
    let name: String
    var body: some View {
        Text(name)
            .bold()
            .font(.title)
            .colorMultiply(.black)
            .frame(width: 300, height: 60)
            .background(Color.yellow)
            .clipShape(Capsule())
    }
}

