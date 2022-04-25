//
//  ViewController.swift
//  cards war game
//
//  Created by Vladi Khagay and Asaf Chen on 17/04/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var score_LBL_player1: UILabel!
    @IBOutlet weak var score_LBL_player2: UILabel!
    @IBOutlet weak var games_LBL: UILabel!
    
    @IBOutlet weak var player1Card_IMG: UIImageView!
    @IBOutlet weak var player2Card_IMG: UIImageView!
    
    
    @IBOutlet weak var start_BTN: UIButton!
    
    
    var player1_score: Int = 0
    var player2_score: Int = 0
    var games_played: Int = 1
    var num_of_games: Int = 2
    
    var player1_cards: [Card] = []
    var player2_cards: [Card] = []
    
    var isGameEnded: Bool = false
    var deck = Deck()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        games_LBL.text = "\(games_played) / \(num_of_games)"

        
    }

    @IBAction func startClicked(_ sender: UIButton) {
        startGames()
        
    }
    
    func startGames() {
        playGame()
        
    }
    
    func playGame() {
        
        var i : Int = 0
        
        dealCards()
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] timer in
            
            if (i == 25) {
                if (games_played == num_of_games) {
                    isGameEnded = true
                    timer.invalidate()
                }
                i = 0
                resetGame()

            }
            
            
            if (!isGameEnded){
                player1Card_IMG.image = player1_cards[i].image
                player2Card_IMG.image = player2_cards[i].image
                
                if (player1_cards[i].value > player2_cards[i].value) {
                    
                    player1_score += 1
                } else if (player1_cards[i].value < player2_cards[i].value){
                    self.player2_score += 1
                } else {
                    // do nothing
                }
                
                score_LBL_player1.text = "\(player1_score)"
                score_LBL_player2.text = "\(player2_score)"
                
             
                i += 1
            }
        }
    }
    
    func resetGame() {
        player1_score = 0
        player2_score = 0

        if (!isGameEnded){
            score_LBL_player1.text = "\(player1_score)"
            score_LBL_player2.text = "\(player2_score)"
            
            if (games_played < num_of_games) {
                games_played += 1
            }
            games_LBL.text = "\(games_played) / \(num_of_games)"
        }
        
        games_LBL.text = "\(games_played) / \(num_of_games)"
        
        player1_cards.removeAll()
        player2_cards.removeAll()
        dealCards()
    }
    
    func dealCards () {
        
        let shuffledDeck :[Card] = deck.shuffleDeck()
        
        
        for index in 0...shuffledDeck.count - 1 {
            
            if (index % 2 == 0) {
                player1_cards.append(shuffledDeck[index])
            } else {
                player2_cards.append(shuffledDeck[index])
            }
        }
    }
    
    
    
}

