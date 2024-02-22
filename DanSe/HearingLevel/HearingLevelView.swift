//
//  HearingLevelView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct HearingLevelView: View {
    @State var levelPassed : Bool = false
    
    @State var moveToNextScene : Bool = false
    
    var body: some View {
        ZStack{
            Color.white1
                .ignoresSafeArea()
                .blur(radius: 10)
            VStack{
                HearingLevelViewRepresentable(levelPassed: $levelPassed)
                    .fullScreenCover(isPresented: $levelPassed, onDismiss: {
                        moveToNextScene = true
                    }, content: {
                        HearingLevelEnded(dismiss: $levelPassed)
                            .presentationBackground {
                                Color.white.opacity(0.6)
                            }
                    })
                    .navigationBarBackButtonHidden()
                    .navigationDestination(isPresented: $moveToNextScene, destination: {
                        HearingLevelEndedStory()
                    })
            }
        }
        
    }
}

#Preview {
    HearingLevelView()
}
