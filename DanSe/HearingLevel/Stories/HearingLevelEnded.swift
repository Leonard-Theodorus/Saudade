//
//  HearingLevelEnded.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct HearingLevelEnded: View {
    @Binding var dismiss : Bool
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
                //TODO: Story -> pake typwriter sama ""
                Text(Constants.chapter2CompletionPrologue)
                    .multilineTextAlignment(.center)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ?  36 : 20, relativeTo: .largeTitle))
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
                Text(Constants.chapter2Completion)
                    .multilineTextAlignment(.center)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 36 : 20, relativeTo: .largeTitle))
                    .foregroundStyle(Color.black1)
                Spacer()
                    .frame(width: Constants.currentDevice == .pad ? 50 : 30)
            }
            Spacer()
                .frame(height: 30)
            
            Image("ear")
                .resizable()
                .aspectRatio(contentMode: Constants.currentDevice == .pad ? .fit : .fill)
                .frame(width: Constants.currentDevice == .pad ? 600 : 100, height: Constants.currentDevice == .pad ? 400 : 100)
            
            if (Constants.currentDevice == .phone){
                Spacer()
                    .frame(height: 30)
            }
            
            HStack{
                Text(Constants.continueJourney)
                    .font(.custom(Constants.contentFontName, size: 44, relativeTo: .title3))
                    .foregroundStyle(Color.lBlue1)
                    .onTapGesture {
                        dismiss = false
                    }
            }
            
        }
    }
}

#Preview {
    HearingLevelEnded(dismiss: .constant(true))
}
