//
//  TouchLevelTutorial.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 12/02/24.
//

import SwiftUI

struct TouchLevelBeginning: View {
    @State var chapterSpawn : Bool = false
    @State var showTutorial : Bool = false
    @State var moveToNextScene : Bool = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack{
                Spacer()
                if chapterSpawn{
                    Text(Constants.chapter1Title)
                        .font(.custom(Constants.contentFontName, size: 50, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                                showTutorial = true
                            })
                        }
                }
                Spacer()
            }
            .navigationBarBackButtonHidden()
            .onAppear{
                withAnimation(.easeInOut(duration: 1.5)) {
                    chapterSpawn = true
                }
            }
            .fullScreenCover(isPresented: $showTutorial, onDismiss: {
                moveToNextScene = true
            }, content: {
                TouchLevelTutorial()
            })
            .navigationDestination(isPresented: $moveToNextScene) {
                TouchLevelView()
            }
            
        }
    }
}

#Preview {
    NavigationStack{
        TouchLevelBeginning()
    }
}
