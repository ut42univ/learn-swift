//
//  ContentView.swift
//  MyFirst
//
//  Created by Takuya Uehara on 2024/10/09.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello, world!"
    var body: some View {
        VStack {
            Text(outputText)
                .font(.largeTitle)
            Button("切り替えボタン") {
                outputText = "Hi, Swift!"
            }
            .padding(.all)
            .background(.blue)
            .foregroundColor(.white)
            
        }
    }
}

#Preview {
    ContentView()
}
