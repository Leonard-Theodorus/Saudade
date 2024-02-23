//
//  TypeWriterView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 23/02/24.
//

import SwiftUI
import Combine

struct TypeWriterView: View {
    let text: String
    let settings: TypeWriterSettings
    let completion: (() -> Void)?
    
    @State private var displayText = ""
    @State private var timer: AnyCancellable?
    @State private var isTyping = true
    @State private var isDelaying = false
    
    init(text : String, settings : TypeWriterSettings = TypeWriterSettings(), completion : (() -> Void)? = nil){
        self.text = text
        self.settings = settings
        self.completion = completion
    }
    
    var body: some View {
        Text(displayText)
            .onAppear{
                startTyping()
            }
            .onDisappear{
                cancelTyping()
            }
    }
    
    private func startTyping() {
        isTyping = true
        isDelaying = false
        startTimer(with: settings.typingSpeed, action: appendNextCharacter)
    }
    
    private func cancelTyping() {
        timer?.cancel()
    }
    
    private func startTimer(with interval: Double, action: @escaping () -> Void) {
        timer = Timer.publish(every: interval, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                action()
            }
    }
    private func appendNextCharacter() {
        if displayText.count < text.count {
            appendCharacterAtCurrentIndex()
        } else {
            cancelTyping()
            completion?()
        }
    }
    
    private func appendCharacterAtCurrentIndex() {
        let index = text.index(text.startIndex, offsetBy: displayText.count)
        displayText.append(text[index])
    }
}

//#Preview {
//    TypeWriterView()
//}
