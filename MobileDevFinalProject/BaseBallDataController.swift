//
//  BaseBallDataController.swift
//  MobileDevFinalProject
//
//  Created by Kyle Lemons on 5/1/19.
//  Copyright © 2019 Kyle Lemons. All rights reserved.
//

import Foundation

class BaseBallDataController {
    let playerPath = Bundle.main.path(forResource: "people", ofType: "json");
    let teamPath = Bundle.main.path(forResource: "teams", ofType: "json");
    let franchisePath = Bundle.main.path(forResource: "teamFranchises", ofType: "json");
    let battingPath = Bundle.main.path(forResource: "batting", ofType: "json");
    let pitchingPath = Bundle.main.path(forResource: "pitching", ofType: "json");
}
