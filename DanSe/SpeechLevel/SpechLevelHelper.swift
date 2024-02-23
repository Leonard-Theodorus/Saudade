//
//  SpechLevelHelper.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 29/01/24.
//

import Foundation
import AVFoundation

final class SpeechLevelHelper : NSObject{
    
    @Published var audioDone : Bool = false
    
    var beatAudioPlayer : AVAudioPlayer!
    
    var audioPlayers : [AVAudioPlayer] = []
    
    var correctAudioPlayer : AVAudioPlayer!
    
    @Published var beatFired : (Bool, Character) = (false, "c")
    
    static var audioFileMap : [Int : URL?] =
    [
        1 : Bundle.main.url(forResource: "beat-1-120-bpm", withExtension: "mp3"),
        2 : Bundle.main.url(forResource: "beat2-140-BPM", withExtension: "mp3"),
        3 : Bundle.main.url(forResource: "beat3-140-BPM", withExtension: "mp3")
    ]
    
    static var answerMap: [Int : String] =
    [
        1 : "btktbtk",
        2 : "bkbkbkbkb",
        3 : "bbkbbbkbbkbtkbk"
    ]
    
    static var beatMap : [Int : [Int]] = 
    [
        1  : [0, 480, 420, 500, 480, 520, 400, 0],
        2  : [0, 530, 170, 339, 331, 510, 197, 332, 338, 0],
        3 : [0, 468, 175, 295, 458, 183, 284, 658, 413, 156, 342, 265, 138, 216, 312,0] //TODO: Smooth-in ini (kasih jarak masing-masing lebihan)
    ]
    
    var beats : [String] = []
    
    func playInstrument(fileUrl : URL){
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            audioPlayers.append(try AVAudioPlayer(contentsOf: fileUrl, fileTypeHint: AVFileType.mp3.rawValue))
            audioPlayers.last!.play()
            
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    func playCorrectBell(fileUrl : URL){
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            correctAudioPlayer = try AVAudioPlayer(contentsOf: fileUrl, fileTypeHint: "mp3")
            correctAudioPlayer.play()
            
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    func playBeat(gameLevel : Int){
        guard let fileUrl = Self.audioFileMap[gameLevel] else {return}
        guard let intervals = Self.beatMap[gameLevel] else {return}
        guard let fileUrl else {return}
        if(beats.count != 0){
            beats = []
        }
        
        if(audioDone) {
            audioDone.toggle()
        }
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            beatAudioPlayer = try AVAudioPlayer(contentsOf: fileUrl, fileTypeHint: AVFileType.mp3.rawValue)
            beatAudioPlayer.delegate = self
            beatAudioPlayer.play()
            displayBeat(index: 0, intervals: intervals, gameLevel: gameLevel)
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    func getResult(for gameLevel : Int) -> String{
        guard let result = Self.answerMap[gameLevel] else {return ""}
        return result
    }
    
    func checkBeat(gameLevel : Int, resultString : String) -> Bool{
        guard let answer = Self.answerMap[gameLevel] else {return false}
        
        let result : Bool = resultString.lowercased() == answer.lowercased() ? true : false
        
        return result
    }
    
    func displayBeat(index : Int, intervals : [Int], gameLevel : Int){
        if(index == intervals.count - 1){
            return
        }
        guard let currentLeveLAnswer = Self.answerMap[gameLevel] else {return}
        var currentInstrument : Character
        
        if(index < intervals.count - 1){
            currentInstrument = Array(currentLeveLAnswer)[index]
        }
        else{
            currentInstrument = "z"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + DispatchTimeInterval.milliseconds(intervals[index])){
            self.beatFired = (true, currentInstrument)
            DispatchQueue.main.asyncAfter(deadline: .now() + DispatchTimeInterval.milliseconds(70)){
                self.beatFired = (false, "z")
            }
            self.displayBeat(index: index + 1, intervals: intervals, gameLevel: gameLevel)
        }
    }
    
}

extension SpeechLevelHelper : AVAudioPlayerDelegate{
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        if(flag){
            audioDone = true
        }
    }
}
