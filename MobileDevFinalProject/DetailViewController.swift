//
//  DetailViewController.swift
//  MobileDevFinalProject
//
//  Created by Kyle Lemons on 4/29/19.
//  Copyright © 2019 Kyle Lemons. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var yearOfBirthLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var batDirectionLabel: UILabel!
    @IBOutlet weak var throwDirectionLabel: UILabel!
    @IBOutlet weak var mlbLogo: UIImageView!
    @IBOutlet weak var mlbAd: UIImageView!
    @IBOutlet weak var adLabel: UILabel!
    @IBOutlet weak var adButton: UIButton!
    @IBAction func touchAd(_ sender: Any) {
        UIApplication.shared.openURL(NSURL(string: "https://www.mlb.com/live-stream-games/subscribe")! as URL)
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            self.navigationItem.title = detailItem?.nameLast
            if let labelFirst = firstNameLabel {
                labelFirst.text = detail.nameFirst
            }
            
            if let labelLast = lastNameLabel {
                labelLast.text = detail.nameLast
            }
            
            if let labelYear = yearOfBirthLabel {
                labelYear.text = "Born: " + "\(detail.birthYear!)"
            }
            
            if let labelWeight = weightLabel {
                labelWeight.text = "Weight: " + "\(detail.weight!)" + " lbs"
            }
            
            if let labelHeight = heightLabel {
                labelHeight.text = "Height: " + "\(detail.height!)" + " in"
            }
            
            if let labelBat = batDirectionLabel {
                labelBat.text = "Bats: " + detail.bats!
            }
            
            if let labelThrow = throwDirectionLabel {
                labelThrow.text = "Throws: " + detail.throwArm!
            }
            
            if let ImageLogo = mlbLogo {
                ImageLogo.image = UIImage(named: "mlb-logo")
            }
            
            if let AdLogo = mlbAd {
                AdLogo.image = UIImage(named: "mlbtv")
            }
            
            if let adText = adLabel {
                adText.text = "App Power by"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: Player? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    
    
}

