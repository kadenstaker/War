//
//  CardController.swift
//  FictionalSniffle
//
//  Created by Kaden Staker on 11/13/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

import UIKit

class CardController {
    static let shared = CardController()
    let baseURL = URL(string: "https://deckofcardsapi.com/api/deck/new")
    
    func getCards(amount: Int = 2, completion: @escaping ([Card]) -> Void) {
        guard let url = baseURL else { fatalError("Bad base url") }
        let builtURL = url.appendingPathComponent("draw")
        
        var components = URLComponents(url: builtURL, resolvingAgainstBaseURL: true)
        let drawTwo = URLQueryItem(name: "count", value: "\(amount)")
        components?.queryItems = [drawTwo]
        
        guard let queryURL = components?.url else { return }
        var request = URLRequest(url: queryURL)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                print("Error with data task: \(error) \(error.localizedDescription)")
                completion([]); return
            }
            guard let data = data else { completion([]); return }
            do {
                let cards = try JSONDecoder().decode(CardsDictionary.self, from: data).cards
                completion(cards)
//                let player1Wins = cards[0] > cards[1]
            } catch let error {
                print("Error decoding object: \(error) \(error.localizedDescription)")
                completion([]); return
            }
        }.resume()
    }
    
    func getImagesFor(card: Card, completion: @escaping (UIImage?) -> Void) {
        guard let url = URL(string: card.image) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print("Error fetching image: \(error) \(error.localizedDescription)")
            }
            guard let data = data else { completion(nil); return }
            let image = UIImage(data: data)
            completion(image)
        }.resume()
    }
}
