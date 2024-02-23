//
//  SpeechLevelView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 29/01/24.
//

import Foundation
import SwiftUI
import AVFoundation

struct SpeechLevelView : View {
    
    var kickUrl : URL? = Bundle.main.url(forResource: "kick-edited", withExtension: "mp3")
    var hihatUrl : URL? = Bundle.main.url(forResource: "hihat-edited", withExtension: "mp3")
    var snareUrl : URL? = Bundle.main.url(forResource: "snare1-edited", withExtension: "mp3")
    var snare2Url : URL? = Bundle.main.url(forResource: "snare2-edited", withExtension: "mp3")
    var bellUrl : URL? = Bundle.main.url(forResource: "correct", withExtension: "mp3")
    var wrongBellUrl : URL? = Bundle.main.url(forResource: "wrong", withExtension: "mp3")
    
    
    @State var gameLevel : Int = 0
    
    @State var play : Bool = false
    
    @State var correctAnswer : String = "$"
    
    @State var correctAnswerCopy : String = ""
    
    @State var gameScore : Int = 0
    
    @State var playDisabled : Bool = false
    
    @State var beatVisible : Bool = false
    
    @State var repeatVisible : Bool = false
    
    @State var currentInstrument : Character = "c"
    
    @State var wrongInstrument : [Bool] = [false, false, false]
    
    @State var levelCorrect : Bool = false
    
    @State var levelIncorrect : Bool = false
    
    @State var levelDone : Bool = false
    
    @State var moveToNextScene : Bool = false
    
    @State var answer : String = ""
    
    var helper : SpeechLevelHelper = SpeechLevelHelper()
    
    var body: some View {
        ZStack{
            Image("level3")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            if (!levelDone){
                VStack(){
                    if(play){
                        VStack{
                            Spacer()
                                .frame(height: 100)
                            HStack(spacing : 50){
                                
                                Button{
                                    guard let kickUrl else {return}
                                    helper.playInstrument(fileUrl: kickUrl)
                                    answer += "b"
                                    if(correctAnswer.first == "b"){
                                        correctAnswer.removeFirst()
                                    }
                                    else{
                                        animateView(at: 0)
                                        if (!repeatVisible){
                                            withAnimation(.easeInOut(duration: 0.2)) {
                                                repeatVisible = true
                                            }
                                        }
                                    }
                                } label: {
                                    Image("kick")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                                        .shadow(radius: 10, x: 2, y: 15)
                                }
                                .offset(x : wrongInstrument[0] ? -30 : 0)
                                
                                Button{
                                    guard let hihatUrl else {return}
                                    helper.playInstrument(fileUrl: hihatUrl)
                                    answer += "t"
                                    if(correctAnswer.first == "t"){
                                        correctAnswer.removeFirst()
                                    }
                                    else{
                                        animateView(at: 1)
                                        if (!repeatVisible){
                                            withAnimation(.easeInOut(duration: 0.2)) {
                                                repeatVisible = true
                                            }
                                        }
                                    }
                                } label: {
                                    Image("hihat")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                                        .shadow(radius: 10, x: 2, y: 20)
                                }
                                .offset(x : wrongInstrument[1] ? -30 : 0)
                                
                                Button{
                                    guard let snareUrl else {return}
                                    guard let snare2Url else {return}
                                    if(gameLevel == 2){
                                        helper.playInstrument(fileUrl: snare2Url)
                                    }
                                    else{
                                        helper.playInstrument(fileUrl: snareUrl)
                                    }
                                    answer += "k"
                                    if(correctAnswer.first == "k"){
                                        correctAnswer.removeFirst()
                                    }
                                    else{
                                        animateView(at: 2)
                                        if (!repeatVisible){
                                            withAnimation(.easeInOut(duration: 0.2)) {
                                                repeatVisible = true
                                            }
                                        }
                                    }
                                    
                                } label: {
                                    Image("snare")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                                        .shadow(radius: 10, x: 2, y: 15)
                                }
                                .offset(x : wrongInstrument[2] ? -30 : 0)
                            }
                        }
                        .onChange(of: answer, { oldValue, newValue in
                            if(answer.count == correctAnswerCopy.count){
                                if(answer == correctAnswerCopy){
                                    //MARK: Kalo bener
                                    withAnimation(.easeInOut(duration: 0.2)) {
                                        levelCorrect = true
                                        play = false
                                        playDisabled = true
                                    }
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
                                        withAnimation(.easeInOut) {
                                            if (levelCorrect) {levelCorrect.toggle()}
                                            if (playDisabled) {playDisabled.toggle()}
                                            repeatVisible = false
                                            gameScore += 1
                                            answer = ""
                                            if (gameScore == 3){
                                                levelDone = true
                                            }
                                            for i in 0 ..< 3{
                                                wrongInstrument[i] = false
                                            }
                                        }
                                        
                                    })
                                }
                                else{
                                    //MARK: Salah
                                    withAnimation(.easeInOut) {
                                        levelIncorrect = true
                                        play = false
                                        playDisabled = true
                                    }
                                }
                                
                            }
                        })
                        .onAppear{
                            correctAnswer = helper.getResult(for: gameLevel)
                            correctAnswerCopy = correctAnswer
                        }
                    }
                    else{
                        VStack{
                            
                            if(beatVisible){
                                //MARK: View instrument-instrumentnya
                                HStack{
                                    switch currentInstrument{
                                        case "b":
                                            Image("kick")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 150, height: 150)
                                                .shadow(radius: 10, x: 2, y: 15)
                                            Spacer()
                                                .frame(width: 300)
                                        case "t":
                                            Image("hihat")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 150, height: 150)
                                                .shadow(radius: 10, x: 2, y: 20)
                                        case "k":
                                            Spacer()
                                                .frame(width: 300)
                                            Image("snare")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 150, height: 150)
                                                .shadow(radius: 10, x: 2, y: 15)
                                        default:
                                            EmptyView()
                                    }
                                }
                            }
                            else if (!playDisabled){
                                
                                HStack(spacing : 20){
                                    VStack{
                                        Button{
                                            gameLevel += 1
                                            helper.playBeat(gameLevel: gameLevel)
                                            withAnimation(.easeInOut(duration: 0.1)) {
                                                playDisabled = true
                                            }
                                        } label: {
                                            PlayMelodyButton()
                                        }
                                        .buttonStyle(.plain)
                                        .disabled(playDisabled)
                                    }
                                }
                            }
                            
                        }
                        .onReceive(helper.$beatFired, perform: { value in
                            let (beatPlay, instrument) : (Bool, Character) = value
                            if(beatPlay){
                                beatVisible = true
                                currentInstrument = instrument
                            }
                            else{
                                beatVisible = false
                            }
                        })
                        
                    }
                }
                .onReceive(helper.$audioDone, perform: { done in
                    if(done){
                        withAnimation(.easeInOut) {
                            play = true
                            playDisabled = false
                        }
                    }
                })
                
                VStack{
                    Spacer()
                        .frame(height: 100)
                    
                    if(play && !playDisabled){
                        Text("Mimick the played melody")
                            .font(.custom(Constants.contentFontName, size: 40, relativeTo: .largeTitle))
                            .foregroundStyle(.black1)
                    }
                    else if(!playDisabled && !play){
                        Text("Press the play button to play the melody")
                            .font(.custom(Constants.contentFontName, size: 40, relativeTo: .largeTitle))
                            .foregroundStyle(.black1)
                    }
                    else if (!play && playDisabled && !levelCorrect && !levelIncorrect){
                        Text("Listen carefully to the melody")
                            .font(.custom(Constants.contentFontName, size: 40, relativeTo: .largeTitle))
                            .foregroundStyle(.black1)
                    }
                    else if (!play && levelCorrect){
                        Text("Correctly Mimicked!")
                            .font(.custom(Constants.contentFontName, size: 40, relativeTo: .largeTitle))
                            .foregroundStyle(.black1)
                    }
                    else if (!play && levelIncorrect){
                        Text("Incorrectly Mimicked!")
                            .font(.custom(Constants.contentFontName, size: 40, relativeTo: .largeTitle))
                            .foregroundStyle(.black1)
                    }
                    
                    Spacer()
                }
                
                if (repeatVisible){
                    HStack{
                        Spacer()
                        VStack{
                            Spacer()
                                .frame(height: 70)
                            Button {
                                repeatVisible = false
                                for i in 0 ..< 3{
                                    wrongInstrument[i] = false
                                }
                                answer = ""
                                correctAnswer = helper.getResult(for: gameLevel)
                                gameLevel -= 1
                                levelIncorrect = false
                                play = false
                                playDisabled = false
                            } label: {
                                RepeatButton()
                                    .tint(Color.black1)
                            }
                            Spacer()
                        }
                    }
                }
                
                if (levelCorrect){
                    CorrectView()
                        .onAppear{
                            guard let bellUrl else {return}
                            helper.playCorrectBell(fileUrl: bellUrl)
                        }
                }
                if (levelIncorrect){
                    WrongView()
                        .onAppear{
                            guard let wrongBellUrl else {return}
                            helper.playCorrectBell(fileUrl: wrongBellUrl)
                        }
                }
                
            }
            
        }
        .fullScreenCover(isPresented: $levelDone, onDismiss: {
            moveToNextScene = true
        }, content: {
            SpeechLevelEnded()
                .presentationBackground {
                    Color.white.opacity(0.8)
                }
            
        })
        .navigationDestination(isPresented: $moveToNextScene, destination: {
            PreEndingStory()
        })
        .navigationBarBackButtonHidden()
    }
}
#Preview {
    SpeechLevelView(levelDone: true)
}
