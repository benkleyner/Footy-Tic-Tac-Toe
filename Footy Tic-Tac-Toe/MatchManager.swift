//
//  MatchManager.swift
//  Footy Tic-Tac-Toe
//
//  Created by Benjamin Kleyner on 6/20/23.
//

import Foundation

class MatchManager: ObservableObject{
    @Published var inGame = false
    @Published var inGameOver = false
    @Published var authenticationState = PlayerAuthState.authenticating
    
    @Published var currentlyGuessing = false
    @Published var drawPrompt = ""
    @Published var pastGuesses = [PastGuess]()
    
    @Published var score = 0
    @Published var remainingTime = maxTimeRemaining
}
