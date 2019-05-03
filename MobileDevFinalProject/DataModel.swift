//
//  DataModel.swift
//  MobileDevFinalProject
//
//  Created by Kyle Lemons on 5/3/19.
//  Copyright © 2019 Kyle Lemons. All rights reserved.
//

import UIKit

class DataModel: Codeable {
    var franchise: [Franchise]
}

class Franchise: Codeable {
    
}

class Team: Codeable {
    
}

class Player: Codeable {
    let playerID: String?
    let birthYear: Int?
    let birthMonth: Int?
    let birthDay: Int?
    let birthCountry: String?
    let birthState: String?
    let birthCity: String?
    let deathYear: Int?
    let deathMonth: Int?
    let deathDay: Int?
    let deathCountry: String?
    let deathState: String?
    let deathCity: String?
    let nameFirst: String?
    let nameLast: String?
    let nameGiven: String?
    let weight: Int?
    let height: Int?
    let bats: String?
    let throwArm: String?
    let debut: String?
    let finalGame: String?
    let retroID: String?
    let bbrefID: String?
    
    private enum CodingKeys : String, CodingKey {
        case throwArm = "throws"
    }
}

class Batting: Codebale {
    let playerID: String?
    let yearID: Int?
    let teamID: String?
    let lgID: String?
    let G: Int?
    let AB: Int?
    let R: Int?
    let H: Int?
    let secondB: Int?
    let thirdB: Int?
    let HR: Int?
    let RBI: Int?
    let SB: Int?
    let CS: Int?
    let BB: Int?
    let SO: Int?
    let IBB: Int?
    let HBP: Int?
    let SH: Int?
    let SF: Int?
    let GIDP: Int?
    
    private enum CodingKeys : String, CodingKey {
        case secondB = "2B"
        case thirdB = "3B"
    }
}
class Pitching: Codeable {
    let playerID: String?
    let yearID: Int?
    let stint: Int?
    let teamID: String?
    let lgID: String?
    let W: Int?
    let L: Int?
    let G: Int?
    let GS: Int?
    let CG: Int?
    let SHO: Int?
    let SV: Int?
    let IPouts: Int?
    let H: Int?
    let ER: Int?
    let HR: Int?
    let BB: Int?
    let SO: Int?
    let BAOpp: Double?
    let ERA: Double?
    let IBB: Int?
    let WP: Int?
    let HBP: Int?
    let BK:  Int?
    let BFP: Int?
    let GF: Int?
    let R: Int?
    let SH: Int?
    let SF: Int?
    let GIDP: Int?
}
