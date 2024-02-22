//
//  TouchLevelEndingView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct TouchLevelEndingView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                Text(Constants.chapter1CompletionPrologue)
                    .multilineTextAlignment(.center)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ?   36 : 20, relativeTo: .largeTitle))
                    .foregroundStyle(Color.black1)
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
            }
            Spacer()
                .frame(height: 30)
            
            HStack{
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                Text(Constants.chapter1Completion)
                    .multilineTextAlignment(.center)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 36 : 20, relativeTo: .largeTitle))
                    .foregroundStyle(Color.black1)
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
            }
            Spacer()
                .frame(height: 30)
            
            Image("eye")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: Constants.currentDevice == .pad ? 600 : 250, height: Constants.currentDevice == .pad ? 400 : 100)
            
            if (Constants.currentDevice == .phone){
                Spacer()
                    .frame(height: 30)
            }
            
            HStack{
                Text(Constants.continueJourney)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 36, relativeTo: .title3))
                    .foregroundStyle(Color.lBlue1)
                    .onTapGesture {
                        dismiss()
                    }
            }
            
        }
    }
}

#Preview {
    TouchLevelEndingView()
}
