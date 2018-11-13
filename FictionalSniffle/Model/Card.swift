//
//  Card.swift
//  FictionalSniffle
//
//  Created by Kaden Staker on 11/13/18.
//  Copyright © 2018 Kaden Staker. All rights reserved.
//

import Foundation

struct CardsDictionary: Decodable {
    let cards: [Card]
}

struct Card: Decodable {
    let suit: String
    let image: String
    let value: String
}
