//
//  BackgroundModifier.swift
//  MyMusic
//
//  Created by Takuya Uehara on 2024/10/12.
//

import SwiftUI

extension Image {
    func backgroundModifier() -> some View {
        self
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
}
