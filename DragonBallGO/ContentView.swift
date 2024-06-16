//
//  ContentView.swift
//  DragonBallGO
//
//  Created by 이재승 on 6/3/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Button(action: {
                print("go to the next view")
            }, label: {
                VStack {
                    Text("")
                    Text("")
                    Image(.logo)
                    Image(.logo2)
                    Spacer()
                    Text("Touch Start!")
                        .foregroundStyle(.blue)
                        .font(.largeTitle)
                        .bold()
                    Text("")
                    Text("")
                    Spacer()
                }
            })
        }
        .background(Image(.BG))
        .padding()
    }
}

#Preview {
    ContentView()
}
