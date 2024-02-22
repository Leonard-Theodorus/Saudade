//
//  PlayMelodyButton.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 20/02/24.
//

import SwiftUI

struct PlayMelodyButton: View {
    var body: some View {
        Text("Play Melody")
            .font(.custom(Constants.contentFontName, size: 30, relativeTo: .subheadline))
            .foregroundStyle(Color.black1)
            .background {
                RoundedRectangle(cornerSize: .init(width: 20, height: 20), style: .circular)
                    .fill(Color.white1)
                    .opacity(0.8)
                    .frame(width: 250, height: 50)
            }
    }
}

#Preview {
    PlayMelodyButton()
}
