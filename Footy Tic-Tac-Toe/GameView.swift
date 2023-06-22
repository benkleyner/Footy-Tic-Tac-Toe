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
    
    func getImageForPlayer(playerName: String) -> String{
        // TODO: pull in the image of the player
        return ""
    }
    
    
    var body: some View {
        ZStack{
            GeometryReader{ _ in
                Image("guesserBg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .scaleEffect(1.1)
                
                VStack{
                    topBar
                    
                    Spacer()
                    
                    VStack{
                        HStack{
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                        }
                        
                        HStack{
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                        }
                        
                        HStack{
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                            Button{
                                // TODO: user selects square
                            }label: {
                                Image(makingGuess == "" ? "blankProfile" : getImageForPlayer(playerName: makingGuess))
                            }
                            
                        }
                    }
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
                        .tint(Color(matchManager.currentlyGuessing ? .blue : .red))
                }
                
                Spacer()
                
                Label("\(matchManager.remainingTime)", systemImage: "clock.fill")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color(matchManager.currentlyGuessing ? .blue : .red))
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
