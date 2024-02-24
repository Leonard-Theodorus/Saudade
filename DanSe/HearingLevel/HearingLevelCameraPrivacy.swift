//
//  HearingLevelCameraPrivacy.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 24/02/24.
//

import SwiftUI

struct HearingLevelCameraPrivacy: View {
    @Environment(\.dismiss) var dismiss
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 17
    let spacing : CGFloat = Constants.currentDevice == .pad ? 20 : 10
    var body: some View {
        VStack{
            HStack{
                Text("Place or hold the device approximately 2 meters from your face for best accuracy.")
                    .font(.custom(Constants.contentFontName, size: fontSize))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black1)
            }
            Spacer()
                .frame(height: spacing)
            
            HStack{
                Text("You can use combinations of eye movement and facial movement to move the crosshair.")
                    .font(.custom(Constants.contentFontName, size: fontSize))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.black1)
            }
            Spacer()
                .frame(height: spacing)
            
            HStack{
                Text(Constants.continueJourney)
                    .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 30))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.lBlue1)
            }
            .onTapGesture {
                dismiss()
            }
        }
    }
}

#Preview {
    HearingLevelCameraPrivacy()
}
