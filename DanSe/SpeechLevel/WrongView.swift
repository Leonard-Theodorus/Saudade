//
//  WrongView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 23/02/24.
//

import SwiftUI

struct WrongView: View {
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 30)
            Image(systemName: "xmark.circle")
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.red)
                .frame(width: 100, height: 100)
        }
    }
}

#Preview {
    WrongView()
}
