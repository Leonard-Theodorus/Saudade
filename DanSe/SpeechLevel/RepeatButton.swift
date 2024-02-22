//
//  RepeatButton.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 21/02/24.
//

import SwiftUI

struct RepeatButton: View {
    var body: some View {
        Image(systemName: "arrow.counterclockwise")
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
    }
}

#Preview {
    RepeatButton()
}
