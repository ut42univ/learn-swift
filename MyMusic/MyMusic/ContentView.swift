//
//  ContentView.swift
//  MyMusic
//
//  Created by Takuya Uehara on 2024/10/12.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack {
            Image(.background)
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            
            HStack {
                Button {
                    soundPlayer.cymbalPlay()
                } label: {
                    Image(.cymbal)
                }
                Button {
                    soundPlayer.guitarPlay()
                } label: {
                    Image(.guitar)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
