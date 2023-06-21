//
//  GameView.swift
//  Footy Tic-Tac-Toe
//
//  Created by Benjamin Kleyner on 6/20/23.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    @State var makingGuess = ""
    
    func makeGuess(){
        // TODO: submit the guess
    }
    
    
    var body: some View {
        ZStack{
            GeometryReader{ _ in
                Image(matchManager.currentlyGuessing ? "guessBg" : "guesserBg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .scaleEffect(1.1)
                
                VStack{
                    topBar
                }
                
            }
        }
    }
    
    var topBar: some View {
        ZStack{
            HStack{
                Button{
                    // TODO: Disconnect from game
                } label:{
                    Image(systemName: "arrowshape.turn.up.left.circle.fill")
                        .font(.largeTitle)
                        .tint(Color(matchManager.currentlyGuessing ? .red : .blue))
                }
                
                Spacer()
                
                Label("\(matchManager.remainingTime)", systemImage: "clock.fill")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color(matchManager.currentlyGuessing ? .red : .blue))
            }
        }
        .padding(.vertical, 15)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(matchManager: MatchManager())
    }
}
