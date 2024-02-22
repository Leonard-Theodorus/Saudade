//
//  Constants.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 30/01/24.
//

import Foundation
import UIKit

struct Constants{
    static let currentDevice = UIDevice.current.userInterfaceIdiom
    static let frameWidth : CGFloat = (UIScreen.main.bounds.width)
    static let frameHeight : CGFloat = (UIScreen.main.bounds.height)
    
    static let deviceWidth : CGFloat = 0.23
    static let deviceHeight : CGFloat = 0.08
    //MARK: Physical Size dari device untuk nentuin speed si crosshairnya (semakin kecil, semakin snappy movementnya)
    //MARK: Semakin gede, semakin smooth tapi ga really move much (ga terlalu detail movementnya)
    
    static let titleFontName : String = "LibreBaskerville-Regular"
    static let contentFontName : String = "CrimsonText-Regular"
    
    static let startJourney : String = "Embark on this Journey"
    static let continueJourney : String = "Press here to continue"
    
    static let chapter1Title : String = "Chapter 1: The Eye"
    static let chapter2Title : String = "Chapter 2: The Ear"
    static let chapter3Title : String = "Chapter 3: The Mouth"
    
    static let chapter1CompletionPrologue : String = "I found myself greeted by the gentle embrace of light, and slowly the fog in my memory is fading as the once sightless world unveils itself."
    
    static let chapter1Completion : String = "You’ve successfully retrieved the hidden object, and with that your eye sight is restored."
    
    static let chapter2CompletionPrologue : String = "A newfound symphony sings to me, filling the void in my memory; once a muted world, now transformed into harmonies."
    static let chapter2Completion : String = "You’ve successfully followed the flying figure, and it rewarded you with the sense of hearing."
    static let chapter3CompletionPrologue : String = "At last, what was lost now has been found."
    
    static let chapter3Completion : String = "You’ve successfully mimicked all the melodies, the ability to speak is now yours."
    
    struct Stories{
        static let beginning1 : String = "It’s all dark and foggy, I can’t seem to remember what kind of life I’ve lead, and what I’ve become. All I know is that the dream I chased yesterday has turned into ashes and embers. I took all of it for granted."
        
        static let beginning2 : String = "I don’t have a single memory of what yesterday might be, I can no longer see, nor listen, nor speak. I lost all senses and purposes. I took all of it for granted."
        
        static let beginning3 : String = "I long to feel and experience it all over again, I realized that the only way to do so, is to rediscover and regain all my senses. Thus I must embark on this journey to reclaim what was lost and to fill the chapters of my forgotten story."
        
        static let chapter1Begin : String = "First, I need to recover my sight, in order to reclaim what was lost. This might be a tough one, but it’s certainly a start."
        
        static let chapter2Begin1 : String = "As the gift of sight is restored, with a new spirit, I embark on my next journey. Symphony of silence surrounds me, as the muted world presents itself at my horizon."
        
        static let chapter2Begin2 : String = "My next quest lies ahead, to relearn how to comprehend melodies of the world."
        
        static let chapter2Begin3 : String = "As I tread upon a path in hope for clues or help, suddenly I encountered a strange flying figure hinting me to follow it. Considering everything, this my best bet yet. I’ll try to follow and keep an eye on it."
        
        static let chapter3Begin1 : String = "As the gift of hearing is restored, I embark on my next journey. Now, there is only one thing that is left. I have to regain my ability to speak."
        
        static let chapter3Begin2 : String = "Suddenly a strange but familiar melodies present itself before me, getting louder and louder by the second."
        
        static let chapter3Begin3 : String = "As I walk further, I came across three odd looking rocks. Only I realize, it plays a certain sound when I tapped it, each of them produces different sounds."
        
        static let chapter3Begin4 : String = "I began to realize that the melodies from earlier sounds identical to these rocks. Maybe I could use these rocks to create music, and play along to the melodies."
        
    }
    
    struct Instructions{
        static let chapter1FirstInstruction : String = "Somewhere in the visible screen, there is a hidden object lying around, your task is to find it and hopefully regain your sight."
        static let chapter1SecondInstruction : String = "In order to do so, use your fingers to touch, drag, and feel all around the visible screen, the object will vibrate when you encounter it. To successfully retrieve it, tap the part of the screen where you feel that vibration. Good Luck!"
        
        static let chapter2FirstInstruction : String = "You are tasked to follow the flying figure with your newly regained sight."
        static let chapter2SecondInstruction : String = "There will be a crosshair on the screen that represents where your eyesight is at. Move the crosshair until it hits the flying figure with your eyes."
        static let chapter2ThirdInstruction : String = "Once you hit it, the flying figure will change position up to three times, and requires you to follow it."
        static let chapter2FourthInstruction : String = "The task will be successful if you manage to hit the flying figure in all of its positions. Good luck!"
        
        static let chapter3FirstInstruction : String = "You are tasked to mimic the melodies by using the three rocks accordingly."
        static let chapter3Extra1 : String = "Press the play button that is visible on the screen to play a melody."
        static let chapter3SecondInstruction : String = "Each melodies will be played first, after that, you have to re-create it by tapping the three rocks accordingly so it is as similar as possible to the original."
        static let chapter3ThirdInstruction : String = "Each melodies are considered succesfully mimicked, if you manage to play the rocks in the correct order according to the played melody."
        static let chapter3FourthInstruction : String = "The task will be successful if you can mimic all of the melodies correctly. Good Luck!"
    
    }
}

