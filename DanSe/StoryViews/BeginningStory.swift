//
//  BeginningStory.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct BeginningStory: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                HStack(alignment: .center){
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Stories.beginning1)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 36 : 20, relativeTo: .title3))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                }
                
                Spacer()
                    .frame(height: 20)
                
                HStack(alignment: .center){
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Stories.beginning2)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 36 : 20, relativeTo: .title3))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    
                }
                Spacer()
                    .frame(height: 20)
                
                HStack(alignment: .center){
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    Text(Constants.Stories.beginning3)
                        .multilineTextAlignment(.center)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 36 : 20, relativeTo: .title3))
                        .foregroundStyle(Color.LG_1)
                    Spacer()
                        .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                    
                }
                
                Spacer()
                    .frame(height: 20)
                
                NavigationLink {
                    TouchLevelBeginning()
                } label: {
                    Text(Constants.startJourney)
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                }
                
            }
            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    BeginningStory()
}
