//
//  TouchLevelTutorial.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 12/02/24.
//

import SwiftUI

struct TouchLevelTutorial: View {
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
                    Text(Constants.Stories.chapter1Begin)
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
                    Text(Constants.Instructions.chapter1FirstInstruction)
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
                    Text(Constants.Instructions.chapter1SecondInstruction)
                        .multilineTextAlignment(.center)
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
                    .frame(height: 20)
                
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
    TouchLevelTutorial()
}
