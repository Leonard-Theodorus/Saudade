//
//  Target.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 30/01/24.
//

import SwiftUI

struct Target: View {
    let currentDevice = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        Image("flying")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: currentDevice == .pad ? 200 : 100, height: currentDevice == .pad ? 200 : 100)
    }
}

#Preview {
    Target()
}
