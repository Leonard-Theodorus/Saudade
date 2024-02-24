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
    @State var showNext : [Bool] = Array(repeating: false, count: 4)
    @State var showNextIndex : Int = 0
    @State var currentTypingIndex : Int = -1
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                if (currentTypingIndex == 0){
                    HStack{
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Stories.chapter3Begin1)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                        Spacer()
                            .frame(width: spacing)
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                            }
                        })
                    }
                }
                Spacer()
                    .frame(height: 30)
                if(showNextIndex == 0 && showNext[showNextIndex]){
                    Text("Continue Story")
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showNext[showNextIndex] = false
                                showNextIndex += 1
                                currentTypingIndex += 1
                            }
                        }
                }
                if (currentTypingIndex == 1){
                    
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
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                            }
                        })
                    }
                }
                
                Spacer()
                    .frame(height: 30)
                if (showNextIndex == 1 && showNext[showNextIndex]){
                    Text("Continue Story")
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showNext[showNextIndex] = false
                                showNextIndex += 1
                                currentTypingIndex += 1
                            }
                        }
                }
                
                if (currentTypingIndex >= 2){
                    
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
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                                currentTypingIndex += 1
                            }
                        })
                    }
                }
                Spacer()
                    .frame(height: 30)
                
                if (currentTypingIndex >= 3){
                    
                    NavigationLink {
                        SpeechLevelBeginning()
                    } label: {
                        Text(Constants.continueJourney)
                            .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 36, relativeTo: .title3))
                            .foregroundStyle(Color.lBlue1)
                    }
                }
                
            }
            .navigationBarBackButtonHidden()
        }
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.8)) {
                currentTypingIndex += 1
            }
        })
    }
}

#Preview {
    HearingLevelEndedStory()
}
