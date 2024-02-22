//
//  SpeechLevelEnded.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct SpeechLevelEnded: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            HStack{
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                //TODO: Story -> pake typwriter sama ""
                Text(Constants.chapter3CompletionPrologue)
                    .multilineTextAlignment(.center)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 36 : 20, relativeTo: .largeTitle))
                    .foregroundStyle(Color.black1)
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
            }
            Spacer()
                .frame(height: 30)
            
            HStack{
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                //TODO: Instructions pake animasi lain
                Text(Constants.chapter3Completion)
                    .multilineTextAlignment(.center)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 36 : 20, relativeTo: .largeTitle))
                    .foregroundStyle(Color.black1)
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
            }
            Spacer()
                .frame(height: 30)
            
            Image("lips")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: Constants.currentDevice == .pad ? 600 : 250, height: Constants.currentDevice == .pad ? 400 : 100)
            
            HStack{
                Text(Constants.continueJourney)
                    .font(.custom(Constants.contentFontName, size: 44, relativeTo: .title3))
                    .foregroundStyle(Color.lBlue1)
                    .onTapGesture {
                        dismiss()
                    }
            }
            
        }
    }
}

#Preview {
    SpeechLevelEnded()
}
