//
//  TouchLevelTutorial.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 12/02/24.
//

import SwiftUI

struct TouchLevelTutorial: View {
    @Binding var showTutorial : Bool
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                HStack {
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    //TODO: Typewriter effect
                    Text(Constants.Stories.chapter1Begin)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .largeTitle))
                    .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Instructions.chapter1FirstInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .title2))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Instructions.chapter1SecondInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .title2))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: 30)
                //TODO: Pisahin Good Luck
                
                HStack(alignment: .center){
                    //TODO: Animation Spawn
                    Text(Constants.continueJourney)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                        .onTapGesture {
                            showTutorial = false
                        }
                }
            }
        }
    }
}

#Preview {
    TouchLevelTutorial(showTutorial: .constant(true))
}
