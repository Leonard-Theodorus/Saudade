//
//  HearingLevelView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 29/01/24.
//

import Foundation
import SwiftUI

struct HearingLevelViewRepresentable : UIViewControllerRepresentable{
    
    @Binding var levelPassed : Bool
    
    class Coordinator: NSObject, HearingLevelUpdateDelegate{
        
        var parent : HearingLevelViewRepresentable
        
        init(_ parent : HearingLevelViewRepresentable){
            self.parent = parent
        }
        
        func updateScore(completed: Bool) {
            self.parent.levelPassed = completed
        }
    }
    
    func makeUIViewController(context: Context) -> HearingLevel {
        let viewController = HearingLevel()
        viewController.delegate = context.coordinator
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: HearingLevel, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
}
