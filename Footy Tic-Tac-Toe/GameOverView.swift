//
//  GameOverView.swift
//  Footy Tic-Tac-Toe
//
//  Created by Benjamin Kleyner on 6/20/23.
//

import SwiftUI

struct GameOverView: View {
    @ObservedObject var matchMananger : MatchManager
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("gameOver")
                .resizable()
                .scaledToFit()
                .padding(.horizontal, 70)
                .padding(.vertical)
            
            Text("Score: \(matchMananger.score)")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.indigo)
            
            Spacer()
            
            Button{
                //TODO: Go back to menu
            } label: {
                Text("Menu")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
            }
            .padding()
            .padding(.horizontal, 50)
            .background(
                Capsule(style: .circular)
                    .fill(Color("playButton"))
            )
            
            
            Spacer()
            
        }
        .background(
        Image("gameOverBg")
            .resizable()
            .scaledToFill()
        )
        .ignoresSafeArea()
    }
}

struct GameOverView_Previews: PreviewProvider {
    static var previews: some View {
        GameOverView(matchMananger: MatchManager())
    }
}
