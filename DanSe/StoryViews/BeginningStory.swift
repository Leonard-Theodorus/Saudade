//
//  BeginningStory.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 01/02/24.
//

import SwiftUI

struct BeginningStory: View {
    
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 17
    let spacing : CGFloat = Constants.currentDevice == .pad ? 20 : 10
    
    @State var showNext : [Bool] = Array(repeating: false, count: 4)
    @State var showNextIndex : Int = 0
    @State var currentTypingIndex : Int = -1
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            VStack {
                if (currentTypingIndex == 0){
                    HStack(alignment: .center){
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Stories.beginning1)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .title3))
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
                    .frame(height: 20)
                
                if (showNextIndex == 0 && showNext[showNextIndex]){
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
                    
                    HStack(alignment: .center){
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Stories.beginning2)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .title3))
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
                    .frame(height: 20)
                
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
                
                if (currentTypingIndex == 2){
                    
                    HStack(alignment: .center){
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Stories.beginning3)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .title3))
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
                    .frame(height: 20)
                
                if (showNextIndex == 2 && showNext[showNextIndex]){
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
                
                if (currentTypingIndex >= 3){
                    
                    HStack(alignment: .center){
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.Stories.beginning4)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .title3))
                            .foregroundStyle(Color.LG_1)
                        Spacer()
                            .frame(width: spacing)
                        
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                                currentTypingIndex += 1
                            }
                        })
                    }
                }
                Spacer()
                    .frame(height: spacing)
                
                if (currentTypingIndex >= 4){
                    NavigationLink {
                        TouchLevelBeginning()
                    } label: {
                        Text(Constants.startJourney)
                            .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 50 : 36, relativeTo: .title3))
                            .foregroundStyle(Color.lBlue1)
                    }
                }
                
            }
            .navigationBarBackButtonHidden()
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 1.5)) {
                currentTypingIndex += 1
            }
        }
    }
}

#Preview {
    BeginningStory()
}
