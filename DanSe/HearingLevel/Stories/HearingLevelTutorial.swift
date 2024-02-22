//
//  HearingLevelTutorial.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 13/02/24.
//

import SwiftUI

struct HearingLevelTutorial: View {
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
                    Text(Constants.Instructions.chapter2FirstInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 20, relativeTo: .largeTitle))
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
                    Text(Constants.Instructions.chapter2SecondInstruction)
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
                    Text(Constants.Instructions.chapter2ThirdInstruction)
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
                    Text(Constants.Instructions.chapter2FourthInstruction)
                        .multilineTextAlignment(.center)
                    //TODO: Pisahin goodluck
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 40 : 20, relativeTo: .title2))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: 30)
                
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
    HearingLevelTutorial()
}
