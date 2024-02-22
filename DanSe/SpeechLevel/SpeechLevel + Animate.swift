//
//  SpeechLevel + Animate.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 20/02/24.
//

import Foundation
import SwiftUI

extension SpeechLevelView{
    
    func animateView(at idx : Int){
        withAnimation(.interactiveSpring(response: 0.2, dampingFraction: 0.1, blendDuration: 0.1)) {
            wrongInstrument[idx] = true
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            withAnimation(.interactiveSpring(response: 0.2, dampingFraction: 0.1, blendDuration: 0.1)) {
                wrongInstrument[idx] = false
            }
        }
    }
}
