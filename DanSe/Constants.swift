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
    
    static let deviceWidth : CGFloat = 0.2
    static let deviceHeight : CGFloat = 0.135
    
    static let goodLuck : String = "Good luck!"
    static let backToMainMenu : String = "Return to main menu."
    
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
        static let beginning1 : String = "It’s all dark and foggy, I can't remember what kind of life I’ve lead, and what I’ve become. I took all of it for granted."
        
        static let beginning2 : String = "I've lost all of my memories. I can no longer see, nor listen, nor speak. I lost all senses and purposes. I took all of it for granted."
        
        static let beginning3 : String = "I long to feel and experience it all over again, I realized that the only way to do so, is to rediscover and regain all my senses."
        
        static let beginning4 : String = "Thus I must embark on this journey to reclaim what was lost and to fill the chapters of my forgotten story."
        
        static let chapter1Begin : String = "First, I need to recover my sight, in order to reclaim what was lost. This might be a tough one, but it’s certainly a start."
        
        static let chapter2Begin1 : String = "As the gift of sight is restored. I embark on my next journey. Absolute silence surrounds me, and the muted world presents itself at my horizon."
        
        static let chapter2Begin2 : String = "My next quest lies ahead. I have to regain my hearing."
        
        static let chapter2Begin3 : String = "As I tread upon a path, suddenly I encountered a strange flying figure hinting me to follow it. I shall try to follow and keep an eye on it."
        
        static let chapter3Begin1 : String = "As the gift of hearing is restored, I embark on my next journey. Now, there is only one thing that is left. I have to regain my ability to speak."
        
        static let chapter3Begin2 : String = "Suddenly a strange but familiar melodies present itself before me."
        
        static let chapter3Begin3 : String = "As I walk further, I came across three odd looking rocks. I realize that it plays a certain sound when I tapped it, each of them produces different ones."
        
        static let chapter3Begin4 : String = "I began to realize that the melodies from earlier sounds identical to these rocks. Maybe I could use these rocks to create music, and play along to the melodies."
        
    }
    
    struct EndingStories{
        static let preEndingStory1 : String = "So, what now? I tried all my best to regain my memories. I gave my all on this long and exhausting journey to regain all my senses."
        static let preEndingStory2 : String = "Starting from scrawling all over the floor to find my eyes."
        static let preEndingStory3 : String = "Following a random bird-looking figure everywhere to regain my ears and hearing."
        static let preEndingStory4 : String = "Making strange music out of strange rocks, that regained my ability to speak. A bizarre experience to say the least."
        static let preEndingStory5 : String = "Why are those the only things that I can remember?"
        
        static let endingStory1 : String = "We as humans, are affected by our greed. That feeling of constantly wanting more and never content."
        static let endingStory2 : String = "That is what happened when we only focus on the end result and what we can achieve."
        static let endingStory3 : String = "Instead of only focusing on the end result, why don’t we savor every part of our journey in achieving that result?"
        static let endingStory4 : String = "We are only given one chance to live, one chance to experience every moment. Once it's passed, it lives on our memory."
        static let endingStory5 : String = "So, why don't we savor all of it, while we still got the chance?"
        static let endingStory6 : String = "Always remember, “it’s never about the destination, it’s the journey.”"
        static let endingStory7 : String = "Thank you for being a part of this journey."
    }
    
    struct Instructions{
        static let chapter1FirstInstruction : String = "Somewhere in the visible screen, there is a hidden object lying around, your task is to find it and hopefully regain your sight."
        static let chapter1SecondInstruction : String = "In order to do so, use your fingers to touch, drag, and feel all around the visible screen, the object will vibrate when you encounter it."
        static let chapter1ThirdInstruction : String = "To successfully retrieve it, tap the part of the screen where you feel that vibration."
        
        static let chapter2FirstInstruction : String = "You are tasked to follow the flying figure with your newly regained sight."
        static let chapter2SecondInstruction : String = "There will be a crosshair on the screen that represents where your eyesight is at. Move the crosshair until it hits the flying figure with your eyes."
        static let chapter2ThirdInstruction : String = "The task will be successful if you manage to hit the flying figure."
        
        static let chapter3FirstInstruction : String = "You are tasked to mimic the melodies by using the three rocks accordingly."
        static let chapter3Extra1 : String = "Press the play button that is visible on the screen to play a melody."
        static let chapter3SecondInstruction : String = "Each melodies will be played first, after that, you have to re-create it by tapping the three rocks in the correct order."
        static let chapter3FourthInstruction : String = "The task will be successful if you can mimic all of the melodies correctly"
    
    }
}

