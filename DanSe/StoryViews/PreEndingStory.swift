//
//  PreEndingStory.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 23/02/24.
//

import SwiftUI
import AVFoundation

struct PreEndingStory: View {
    let fontSize : CGFloat = Constants.currentDevice == .pad ? 36 : 15
    let spacing : CGFloat = Constants.currentDevice == .pad ? 20 : 10
    @State var showNext : [Bool] = Array(repeating: false, count: 7)
    @State var showNextIndex : Int = 0
    @State var currentTypingIndex : Int = -1
    var fileURL : URL? = Bundle.main.url(forResource: "lifting", withExtension: "mp3")
    @State var player : AVAudioPlayer!
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack {
                if (currentTypingIndex == 0){
                    HStack{
                        Spacer()
                            .frame(width: spacing)
                        Text(Constants.EndingStories.preEndingStory1)
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
                if (showNextIndex == 0 && showNext[showNextIndex]){
                    Text("Continue")
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
                        Text(Constants.EndingStories.preEndingStory2)
                            .multilineTextAlignment(.center)
                            .font(.custom(Constants.contentFontName, size: fontSize, relativeTo: .largeTitle))
                            .foregroundStyle(Color.LG_1)
                        Spacer()
                            .frame(width: spacing)
                    }
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                            }
                        })
                    }
                }
                
                Spacer()
                    .frame(height: 30)
                
                if (showNextIndex == 1 && showNext[showNextIndex]){
                    Text("Continue")
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
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                            }
                        })
                    }
                }
                
                Spacer()
                    .frame(height: 30)
                
                if (showNextIndex == 2 && showNext[showNextIndex]){
                    Text("Continue")
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
                
                if (currentTypingIndex == 3){
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
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                            }
                        })
                    }
                }
                
                Spacer()
                    .frame(height: 30)
                
                if (showNextIndex == 3 && showNext[showNextIndex]){
                    Text("Continue")
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
                
                if (currentTypingIndex >= 4){
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
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                            withAnimation(.easeInOut(duration: 0.8)) {
                                showNext[showNextIndex] = true
                            }
                        })
                    }
                }
                
                
                Spacer()
                    .frame(height: 30)
                
                
                Spacer()
                    .frame(height: 30)
                if (currentTypingIndex >= 4){
                    
                    NavigationLink {
                        EndingStory(player: $player)
                    } label: {
                        Text(Constants.continueJourney)
                            .font(.custom(Constants.contentFontName, size: Constants.currentDevice == .pad ? 44 : 36, relativeTo: .title3))
                            .foregroundStyle(Color.lBlue1)
                    }
                }
                
                
            }
            .navigationBarBackButtonHidden()
        }
        .onAppear{
            do{
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                guard let fileURL else {return}
                player = try AVAudioPlayer(contentsOf: fileURL, fileTypeHint: AVFileType.mp3.rawValue)
                player.numberOfLoops = -1
                player.volume = 0.8
                player.play()
            }
            catch{
                print(error.localizedDescription)
            }
            withAnimation(.easeInOut(duration: 0.8)) {
                currentTypingIndex += 1
            }
        }
    }
}

#Preview {
    PreEndingStory()
}
