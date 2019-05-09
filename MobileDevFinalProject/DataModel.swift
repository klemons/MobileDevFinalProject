//
//  DataModel.swift
//  MobileDevFinalProject
//
//  Created by Kyle Lemons on 5/3/19.
//  Copyright © 2019 Kyle Lemons. All rights reserved.
//

import UIKit

class DataModel: Codable {
    var franchise: [Franchise]
    var team: [Team]
    var player: [Player]
    var batting: [Batting]
    var pitching: [Pitching]
}

class Franchise: Codable {
    let franchID: String?
    let franchName: String?
    let active: String?
    let NAassoc: String?
}

class Team: Codable {
    let yearID: Int? = nil
    let lgID: String? = nil
    let teamID: String? = nil
    let franchID: String? = nil
    let divID: String? = nil
    let Rank: Int? = nil
    let G: Int? = nil
    let Ghome: Int? = nil
    let W: Int? = nil
    let L: Int? = nil
    let DivWin: String? = nil
    let WCWin: String? = nil
    let LgWin: String? = nil
    let WSWin: String? = nil
    let R: Int? = nil
    let AB: Int? = nil
    let H: Int? = nil
    let secondB: Int?
    let thirdB: Int?
    let HR: Int? = nil
    let BB: Int? = nil
    let SO: Int? = nil
    let SB: Int? = nil
    let CS: Int? = nil
    let HBP: Int? = nil
    let SF: Int? = nil
    let RA: Int? = nil
    let ER: Int? = nil
    let ERA: Double? = nil
    let CG: Int? = nil
    let SHO: Int? = nil
    let SV: Int? = nil
    let IPouts: Int? = nil
    let HA: Int? = nil
    let HRA: Int? = nil
    let BBA: Int? = nil
    let SOA: Int? = nil
    let E: Int? = nil
    let DP: Int? = nil
    let FP: Double? = nil
    let name: String? = nil
    let park: String? = nil
    let attendance: Int? = nil
    let BPF: Int? = nil
    let PPF: Int? = nil
    let teamIDBR: String? = nil
    let teamIDlahman45: String? = nil
    let teamIDretro: String? = nil
    
    private enum CodingKeys : String, CodingKey {
        case secondB = "2B"
        case thirdB = "3B"
}
}

class Player: Codable {
    let playerID: String? = nil
    let birthYear: Int? = nil
    let birthMonth: Int? = nil
    let birthDay: Int? = nil
    let birthCountry: String? = nil
    let birthState: String? = nil
    let birthCity: String? = nil
    let deathYear: Int? = nil
    let deathMonth: Int? = nil
    let deathDay: Int? = nil
    let deathCountry: String? = nil
    let deathState: String? = nil
    let deathCity: String? = nil
    let nameFirst: String? = nil
    let nameLast: String? = nil
    let nameGiven: String? = nil
    let weight: Int? = nil
    let height: Int? = nil
    let bats: String? = nil
    let throwArm: String?
    let debut: String? = nil
    let finalGame: String? = nil
    let retroID: String? = nil
    let bbrefID: String? = nil
    
    private enum CodingKeys : String, CodingKey {
        case throwArm = "throws"
    }
}

class Batting: Codable {
    let playerID: String? = nil
    let yearID: Int? = nil
    let teamID: String? = nil
    let lgID: String? = nil
    let G: Int? = nil
    let AB: Int? = nil
    let R: Int? = nil
    let H: Int? = nil
    let secondB: Int?
    let thirdB: Int?
    let HR: Int? = nil
    let RBI: Int? = nil
    let SB: Int? = nil
    let CS: Int? = nil
    let BB: Int? = nil
    let SO: Int? = nil
    let IBB: Int? = nil
    let HBP: Int? = nil
    let SH: Int? = nil
    let SF: Int? = nil
    let GIDP: Int? = nil
    
    private enum CodingKeys : String, CodingKey {
        case secondB = "2B"
        case thirdB = "3B"
    }
}
    
class Pitching: Codable {
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
