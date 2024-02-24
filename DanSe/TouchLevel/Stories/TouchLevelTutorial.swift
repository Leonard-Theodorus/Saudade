//
//  TouchLevelTutorial.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 12/02/24.
//

import SwiftUI

struct TouchLevelTutorial: View {
    @Environment(\.dismiss) var dismiss
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 17
    let spacing : CGFloat = Constants.currentDevice == .pad ? 20 : 10
    let settings = TypeWriterSettings(typingSpeed: 0.04)
    @State var showNext : [Bool] = Array(repeating: false, count: 5)
    @State var nextIdx : Int = 0
    @State var currentTypingIndex : Int = -1
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                if (currentTypingIndex >= 0){
                    HStack {
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Stories.chapter1Begin)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                            .onAppear{
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                                    withAnimation(.easeInOut(duration: 1.5)) {
                                        currentTypingIndex += 1
                                    }
                                })
                            }
                        
                        Spacer()
                            .frame(width: spacing)
                    }
                }
                Spacer()
                    .frame(height: 30)
                if (currentTypingIndex >= 1){
                    HStack{
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Instructions.chapter1FirstInstruction)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                        Spacer()
                            .frame(width: spacing)
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[nextIdx] = true
                            }
                        })
                    }
                }
                Spacer()
                    .frame(height: 20)
                
                if(nextIdx == 0 && showNext[nextIdx]){
                    Text("Continue")
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showNext[nextIdx] = false
                                nextIdx += 1
                                currentTypingIndex += 1
                            }
                        }
                }
                
                if(currentTypingIndex >= 2){
                    HStack{
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Instructions.chapter1SecondInstruction)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                        Spacer()
                            .frame(width: spacing)
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[nextIdx] = true
                            }
                        })
                    }
                }
                Spacer()
                    .frame(height: 30)
                if(nextIdx == 1 && showNext[nextIdx]){
                    Text("Continue")
                        .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                        .foregroundStyle(Color.lBlue1)
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                showNext[nextIdx] = false
                                nextIdx += 1
                                currentTypingIndex += 1
                            }
                        }
                }
                
                if (currentTypingIndex >= 3){
                    HStack{
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Instructions.chapter1ThirdInstruction)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                        Spacer()
                            .frame(width: spacing)
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[nextIdx] = true
                                currentTypingIndex += 1
                            }
                        })
                    }
                }
                
                if (currentTypingIndex >= 4){
                    
                    HStack{
                        Text(Constants.goodLuck)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                    }
                    
                    Spacer()
                        .frame(height: 20)
                    
                    HStack(alignment: .center){
                        Text(Constants.continueJourney)
                            .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                            .foregroundStyle(Color.lBlue1)
                            .onTapGesture {
                                dismiss()
                            }
                    }
                }
                
            }
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 0.8)) {
                currentTypingIndex += 1
            }
        }
    }
}

#Preview {
    TouchLevelTutorial()
}
