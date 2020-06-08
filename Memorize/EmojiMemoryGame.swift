//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dominic Lanzillotta on 6/7/20.
//  Copyright © 2020 Dominic Lanzillotta. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["😃","🤪","🥺","🙄","🤯"]
        return MemoryGame(numberOfPairsOfCards: Int.random(in: 2...5)) { emojis[$0] }
    }
    
    //MARK: Model Access
    
    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }
    
    //MARK: Actions
    
    func choose(_ card: MemoryGame<String>.Card) {
        game.choose(card)
    }
}
