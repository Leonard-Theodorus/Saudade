//
//  CorrectView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 21/02/24.
//

import SwiftUI

struct CorrectView: View {
    var body: some View {
        Image(systemName: "checkmark.circle")
            .resizable()
            .scaledToFit()
            .foregroundStyle(Color.green)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    CorrectView()
}
