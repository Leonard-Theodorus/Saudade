//
//  Crosshair.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 30/01/24.
//

import SwiftUI

struct Crosshair: View {
    let currentDevice = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(Color.red)
                .frame(width: 5)
            Rectangle()
                .fill(Color.red)
                .frame(height: 5)
        }
        .frame(width: currentDevice == .pad ?  100 : 50, height: currentDevice == .pad ? 100 : 50)
    }
}

#Preview {
    Crosshair()
}
