//
//  HearingLevelEnded.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct HearingLevelEndedStory: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack{
                    //TODO: Animation Spawn
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Stories.chapter3Begin1)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 20, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Stories.chapter3Begin2)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 20, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                
                Spacer()
                    .frame(height: 30)
                
                HStack{
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Stories.chapter3Begin3)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 20, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
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
