//
//  ContentView.swift
//  DanSe
//
//  Created by Alonica🐦‍⬛🐺 on 27/01/24.
//

import SwiftUI

struct MainMenu : View {
    var body: some View{
        NavigationStack {
            ZStack {
                Image("faceless")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack(spacing:  20){
                    Spacer()
                        .frame(height: Constants.currentDevice == .pad ? 200 : 0)
                    Text("Saudade")
                        .font(.custom(Constants.titleFontName, size: Constants.currentDevice == .pad ? 96 : 50, relativeTo: .largeTitle))
                        .foregroundStyle(Color.LG_1)
                    NavigationLink {
                        BeginningStory()
                    } label: {
                        PlayButton()
                    }
                    .buttonStyle(.plain)
                    Spacer()
                        .frame(height: Constants.currentDevice == .pad ? 0 : 20)
                }
            }
            .navigationBarBackButtonHidden()
            .ignoresSafeArea(.all)
        }
    }
}


#Preview {
    MainMenu()
}
