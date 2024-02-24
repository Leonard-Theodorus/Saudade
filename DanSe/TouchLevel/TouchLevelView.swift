//
//  Touch.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 28/01/24.
//

import Foundation
import SwiftUI
import SpriteKit

struct TouchLevelView : View {
    
    @State var gameScene : SKScene?
    
    @State var levelPassed : Bool = false
    @State var moveToNextScene : Bool = false
    
    var touchLevelHelper : TouchLevelHelper = TouchLevelHelper.shared
    
    var body: some View {
        
        VStack{
            SpriteView(scene: gameScene ?? SKScene())
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden()
        .fullScreenCover(isPresented: $levelPassed, onDismiss: {
            moveToNextScene = true
        }, content: {
            TouchLevelEndingView()
                .presentationBackground(Color.white.opacity(0.6))
        })
        .navigationDestination(isPresented: $moveToNextScene, destination: {
            TouchLevelEndedStory()
        })
        .onAppear{
            let scene = TouchLevelScene(size: CGSize(width: Constants.frameWidth, height: Constants.frameHeight))
            gameScene = scene
            touchLevelHelper.$levelPassed.receive(on: DispatchQueue.main)
                .sink { completed in
                    if(completed){
                       levelPassed = true
                    }
                }
                .store(in: &touchLevelHelper.garbage)
        }
        .onDisappear{
            levelPassed = false
        }
    }
}

