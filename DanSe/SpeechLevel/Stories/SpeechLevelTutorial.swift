//
//  SpeechLevelTutorial.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 19/02/24.
//

import SwiftUI

struct SpeechLevelTutorial: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                HStack {
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    //TODO: Typewriter effect
                    Text(Constants.Instructions.chapter3FirstInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .largeTitle))
                    .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack {
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    //TODO: Typewriter effect
                    Text(Constants.Instructions.chapter3Extra1)
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
                    Text(Constants.Instructions.chapter3SecondInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .title2))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: Constants.currentDevice == .pad ? 30 : 5)
                
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Instructions.chapter3ThirdInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .title2))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: Constants.currentDevice == .pad ? 30 : 20)
                
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Instructions.chapter2FourthInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .title2))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                
                Spacer()
                    .frame(height: Constants.currentDevice == .pad ? 30 : 10)
                
                HStack(alignment: .center){
                    //TODO: Animation Spawn
                    Text(Constants.continueJourney)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
        }
    }
}

#Preview {
    SpeechLevelTutorial()
}
