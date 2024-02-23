//
//  HearingLevelEnded.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct HearingLevelEndedStory: View {
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 17
    let spacing : CGFloat = Constants.currentDevice == .pad ? 20 : 10
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: spacing)
                    Text(Constants.Stories.chapter3Begin1)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    Spacer()
                        .frame(width: spacing)
                    Text(Constants.Stories.chapter3Begin2)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    Spacer()
                        .frame(width: spacing)
                    Text(Constants.Stories.chapter3Begin3)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                Spacer()
                    .frame(height: 30)
                
                NavigationLink {
                    SpeechLevelBeginning()
                } label: {
                    Text(Constants.continueJourney)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                }
                
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    HearingLevelEndedStory()
}
