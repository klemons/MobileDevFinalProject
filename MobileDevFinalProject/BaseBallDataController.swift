//
//  BaseBallDataController.swift
//  MobileDevFinalProject
//
//  Created by Kyle Lemons on 5/1/19.
//  Copyright © 2019 Kyle Lemons. All rights reserved.
//

import Foundation

class BaseBallDataController: NSObject {
    let playerPath = Bundle.main.path(forResource: "people", ofType: "json");
    let teamPath = Bundle.main.path(forResource: "teams", ofType: "json");
    let franchisePath = Bundle.main.path(forResource: "teamsFranchises", ofType: "json");
    let battingPath = Bundle.main.path(forResource: "batting", ofType: "json");
    let pitchingPath = Bundle.main.path(forResource: "pitching", ofType: "json");
    
    let playerURL = "https://api.myjson.com/bins/kerj2"
    
    lazy var playerData = try? NSData(contentsOfFile: playerPath!, options: NSData.ReadingOptions.mappedIfSafe);
    lazy var teamData = try? NSData(contentsOfFile: teamPath!, options: NSData.ReadingOptions.mappedIfSafe);
    lazy var franchiseData = try? NSData(contentsOfFile: franchisePath!, options: NSData.ReadingOptions.mappedIfSafe);
    lazy var battingData = try? NSData(contentsOfFile: battingPath!, options: NSData.ReadingOptions.mappedIfSafe);
    lazy var pitchingData = try? NSData(contentsOfFile: pitchingPath!, options: NSData.ReadingOptions.mappedIfSafe);
    
    var myModel: Any?
    
    func loadPlayer(completion: @escaping (_ myModel: DataModel) ->()) {
        if let url = Bundle.main.url(forResource: "people", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Player].self, from: data)
                
                self.myModel = jsonData
                
                for player in jsonData {
                    print(player.nameFirst ?? "none")
                }
                
            } catch {
                print("error:\(error)")
            }
        }
    }
    
    func loadTeam(completion: @escaping (_ myModel: DataModel) ->()) {
        if let url = Bundle.main.url(forResource: "teams", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Team].self, from: data)
                
                self.myModel = jsonData
                
                
            } catch {
                print("error:\(error)")
            }
            
            
        }
    }
    
    func loadFranchise(completion: @escaping (_ myModel: DataModel) ->()) {
        if let url = Bundle.main.url(forResource: "teamsFranchises", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Franchise].self, from: data)
                
                self.myModel = jsonData
                
                
            } catch {
                print("error:\(error)")
            }
            
 
        }
    }
    
    func loadBatting(completion: @escaping (_ myModel: DataModel) ->()) {
        if let url = Bundle.main.url(forResource: "batting", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Batting].self, from: data)
                
                self.myModel = jsonData
                
                
            } catch {
                print("error:\(error)")
            }

        }
    }
    
    func loadPitching(completion: @escaping (_ myModel: DataModel) ->()) {
        if let url = Bundle.main.url(forResource: "pitching", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Pitching].self, from: data)
                
                self.myModel = jsonData
                
                
            } catch {
                print("error:\(error)")
            }

        }
    }
    
}
