//
//  EndingStory2.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 23/02/24.
//

import SwiftUI

struct EndingStory2: View {
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 17
    let spacing : CGFloat = Constants.currentDevice == .pad ? 20 : 10
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack{
                    Spacer()
                        .frame(width: spacing)
                    Text(Constants.EndingStories.endingStory5)
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
                    Text(Constants.EndingStories.endingStory6)
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
                    Text(Constants.EndingStories.endingStory7)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: spacing)
                }
                Spacer()
                    .frame(height: 30)
                Spacer()
                    .frame(height: 30)
                
                NavigationLink {
                    MainMenu()
                } label: {
                    Text(Constants.backToMainMenu)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 30, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                }
                
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    EndingStory2()
}
