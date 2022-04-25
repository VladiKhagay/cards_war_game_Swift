import Foundation
import UIKit


class Deck {
    
    var crads : [Card] = []
    
    let spadesImages = [#imageLiteral(resourceName: "2_of_spades"), #imageLiteral(resourceName: "3_of_spades"), #imageLiteral(resourceName: "4_of_spades"), #imageLiteral(resourceName: "5_of_spades"), #imageLiteral(resourceName: "6_of_spades"), #imageLiteral(resourceName: "7_of_spades"), #imageLiteral(resourceName: "8_of_spades"), #imageLiteral(resourceName: "9_of_spades"), #imageLiteral(resourceName: "10_of_spades"), #imageLiteral(resourceName: "jack_of_spades2"), #imageLiteral(resourceName: "queen_of_spades2"), #imageLiteral(resourceName: "king_of_spades2"), #imageLiteral(resourceName: "ace_of_spades")]
    let diamondsImages = [#imageLiteral(resourceName: "2_of_diamonds"), #imageLiteral(resourceName: "3_of_diamonds"), #imageLiteral(resourceName: "4_of_diamonds"), #imageLiteral(resourceName: "5_of_diamonds"), #imageLiteral(resourceName: "6_of_diamonds"), #imageLiteral(resourceName: "7_of_diamonds"), #imageLiteral(resourceName: "8_of_diamonds"), #imageLiteral(resourceName: "9_of_diamonds"), #imageLiteral(resourceName: "10_of_diamonds"), #imageLiteral(resourceName: "jack_of_diamonds2"), #imageLiteral(resourceName: "queen_of_diamonds2"), #imageLiteral(resourceName: "king_of_diamonds2"), #imageLiteral(resourceName: "ace_of_diamonds")]
    let clubsImages = [#imageLiteral(resourceName: "2_of_clubs"), #imageLiteral(resourceName: "3_of_clubs"), #imageLiteral(resourceName: "4_of_clubs"), #imageLiteral(resourceName: "5_of_clubs"), #imageLiteral(resourceName: "6_of_clubs"), #imageLiteral(resourceName: "7_of_clubs"), #imageLiteral(resourceName: "8_of_clubs"), #imageLiteral(resourceName: "9_of_clubs"), #imageLiteral(resourceName: "10_of_clubs"), #imageLiteral(resourceName: "jack_of_clubs2"), #imageLiteral(resourceName: "queen_of_clubs2"), #imageLiteral(resourceName: "king_of_clubs2"), #imageLiteral(resourceName: "ace_of_clubs")]
    let heartsImages = [#imageLiteral(resourceName: "2_of_hearts"), #imageLiteral(resourceName: "3_of_hearts"), #imageLiteral(resourceName: "4_of_hearts"), #imageLiteral(resourceName: "5_of_hearts"), #imageLiteral(resourceName: "6_of_hearts"), #imageLiteral(resourceName: "7_of_hearts"), #imageLiteral(resourceName: "8_of_hearts"), #imageLiteral(resourceName: "9_of_hearts"), #imageLiteral(resourceName: "10_of_hearts"), #imageLiteral(resourceName: "jack_of_hearts2"), #imageLiteral(resourceName: "queen_of_hearts2"), #imageLiteral(resourceName: "king_of_hearts2"), #imageLiteral(resourceName: "ace_of_hearts")]
    
    
    init (){
        
        for i in 2...14 {
            crads.append(Card(image: spadesImages[i - 2], value: i))
            crads.append(Card(image: diamondsImages[i - 2], value: i))
            crads.append(Card(image: clubsImages[i - 2], value: i))
            crads.append(Card(image: heartsImages[i - 2], value: i))
            
        }
    }
    
    func shuffleDeck() -> [Card]{
        let shuffledDeck = self.crads.shuffled()
        return shuffledDeck
        
    }
    
}
