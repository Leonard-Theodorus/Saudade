//
//  PreEndingStory.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 23/02/24.
//

import SwiftUI

struct PreEndingStory: View {
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 15
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
                    Text(Constants.EndingStories.preEndingStory1)
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
                    Text(Constants.EndingStories.preEndingStory2)
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
                    Text(Constants.EndingStories.preEndingStory3)
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
                    Text(Constants.EndingStories.preEndingStory4)
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
                    Text(Constants.EndingStories.preEndingStory5)
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
                    Text(Constants.EndingStories.preEndingStory6)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                
                Spacer()
                    .frame(height: 30)
                
                NavigationLink {
                    EndingStory()
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
    PreEndingStory()
}
