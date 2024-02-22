//
//  PlayButton.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 11/02/24.
//

import SwiftUI

struct PlayButton : View {
    var body: some View {
        Text("Embark on Journey")
            .font(.custom(Constants.contentFontName, size: 30, relativeTo: .subheadline))
            .foregroundStyle(.black1)
            .background {
                RoundedRectangle(cornerSize: .init(width: 20, height: 20), style: .circular)
                    .fill(Color.LG_1)
                    .opacity(0.8)
                    .frame(width: 300, height: 50)
            }
    }
}
#Preview {
    PlayButton()
}
