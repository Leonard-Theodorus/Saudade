//
//  SpeechLevelBeginning.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 19/02/24.
//

import SwiftUI

struct SpeechLevelBeginning: View {
    @State var chapterSpawn : Bool = false
    @State var showTutorial : Bool = false
    @State var moveToNextScene : Bool = false
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                if chapterSpawn{
                    HStack{
                        Text(Constants.chapter3Title)
                            .font(.custom(Constants.contentFontName, size: 50, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0, execute: {
                            showTutorial = true
                        })
                    }
                }
            }
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 1.5)) {
                chapterSpawn = true
            }
        }
        .navigationBarBackButtonHidden()
        .fullScreenCover(isPresented: $showTutorial, onDismiss: {
            moveToNextScene = true
        }, content: {
            SpeechLevelTutorial()
        })
        .navigationDestination(isPresented: $moveToNextScene) {
            SpeechLevelView()
        }
    }
}

#Preview {
    SpeechLevelBeginning()
}
