//
//  HearingLevelTutorial.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 13/02/24.
//

import SwiftUI

struct HearingLevelTutorial: View {
    @Environment(\.dismiss) var dismiss
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 17
    let spacing : CGFloat = Constants.currentDevice == .pad ? 20 : 10
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                HStack {
                    Spacer()
                        .frame(width: spacing)
                    //TODO: Typewriter effect
                    Text(Constants.Instructions.chapter2FirstInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                    .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: spacing)
                    Text(Constants.Instructions.chapter2SecondInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: spacing)
                    Text(Constants.Instructions.chapter2ThirdInstruction)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: spacing)
                    Text(Constants.Instructions.chapter2FourthInstruction)
                        .multilineTextAlignment(.center)
                    //TODO: Pisahin goodluck
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    Text(Constants.goodLuck)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
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
