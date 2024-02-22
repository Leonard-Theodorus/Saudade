//
//  TouchLevelHelper.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 29/01/24.
//

import Foundation
import Combine

final class TouchLevelHelper{
    
    @Published var levelPassed : Bool = false
    
    static var shared : TouchLevelHelper = TouchLevelHelper()
    
    var garbage : Set<AnyCancellable> = Set<AnyCancellable>()
    
    private init (){}
    
    func send(){
        levelPassed = true
    }
}
