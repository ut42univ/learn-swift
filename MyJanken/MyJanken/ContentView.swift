//
//  ContentView.swift
//  MyJanken
//
//  Created by Takuya Uehara on 2024/10/10.
//

import SwiftUI

struct ContentView: View {
    // じゃんけんの結果を格納する変数（0: 初期, 1:グー, 2:チョキ, 3:パー）
    @State var jankenNumber: Int = 0;
    
    var body: some View {
        VStack {
            Spacer()
            
            if jankenNumber == 0 {
                Text("じゃんけんを開始します")
                    .padding(.bottom)
                    
            } else if jankenNumber == 1 {
                Image(.gu)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if jankenNumber == 2 {
                Image(.choki)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image(.pa)
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            Button(action: {
                var newJankenNumber: Int = 0
                
                repeat {
                    newJankenNumber = Int.random(in: 1...3)
                } while jankenNumber == newJankenNumber
                
                jankenNumber = newJankenNumber
            }, label: {
                Text("じゃんけんをする！")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .background(.pink)
                    .foregroundColor(.white)
                
            })
        }
        
    }
}

#Preview {
    ContentView()
}
