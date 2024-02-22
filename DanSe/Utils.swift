//
//  Utils.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 30/01/24.
//

import Foundation
import SwiftUI

struct Utils{
    static func filter(point : CGFloat, filterVal : CGFloat) -> CGFloat{
        return filterVal * point + (1.0 - filterVal) * point
    }
    
    
}

extension CGFloat {
    func clamped(to: ClosedRange<CGFloat>) -> CGFloat {
        return to.lowerBound > self ? to.lowerBound
            : to.upperBound < self ? to.upperBound
            : self
    }
}

