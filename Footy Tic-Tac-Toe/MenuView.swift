//
//  MenuView.swift
//  Footy Tic-Tac-Toe
//
//  Created by Benjamin Kleyner on 6/20/23.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var matchMananger : MatchManager
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("logo")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Button{
                //TODO: Start Matchmaking Menu
            } label: {
                Text("Play")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .disabled(matchMananger.authenticationState != .authenticated || matchMananger.inGame)
            .padding(.vertical, 20)
            .padding(.horizontal, 100)
            .background(
                Capsule(style: .circular)
                    .fill(matchMananger.authenticationState != .authenticated || matchMananger.inGame ?  .gray : Color("playButton"))
            )
            
            Text(matchMananger.authenticationState.rawValue)
                .font(.headline.weight(.semibold))
                .foregroundColor(.yellow)
                .padding()
            
            Spacer()
            
        }
        .background(
            Image("menuBg")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(matchMananger: MatchManager())
    }
}
