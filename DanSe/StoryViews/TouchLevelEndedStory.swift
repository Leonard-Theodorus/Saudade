//
//  TouchLevelEndedStory.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct TouchLevelEndedStory: View {
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
                    Text(Constants.Stories.chapter2Begin1)
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
                    Text(Constants.Stories.chapter2Begin2)
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
                    Text(Constants.Stories.chapter2Begin3)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                Spacer()
                    .frame(height: 30)
                
                NavigationLink {
                    HearingLevelBeginning()
                } label: {
                    //TODO: Animation Spawn
                    Text(Constants.continueJourney)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                }
                
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    NavigationStack{
        TouchLevelEndedStory()
    }
}
