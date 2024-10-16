//
//  ContentView.swift
//  MyMap
//
//  Created by Takuya Uehara on 2024/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(searchKey: "羽田空港")
        }
    }
}

#Preview {
    ContentView()
}
