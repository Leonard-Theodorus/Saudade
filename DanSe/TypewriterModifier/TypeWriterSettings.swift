//
//  TypeWriterSettings.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 23/02/24.
//

import Foundation

struct TypeWriterSettings{
    
    let typingSpeed: Double
    let delaySeconds: Double
    
    init(typingSpeed: Double = 0.05, delaySeconds: Double = 3.0){
        self.typingSpeed = typingSpeed
        self.delaySeconds = delaySeconds
    }
    
}
