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
                labelYear.text = "\(detail.birthYear)"
            }
            
            if let labelWeight = weightLabel {
                labelWeight.text = "\(detail.weight)"
            }
            
            if let labelHeight = heightLabel {
                labelHeight.text = "\(detail.height)"
            }
            
            if let labelBat = batDirectionLabel {
                labelBat.text = detail.bats
            }
            
            if let labelThrow = throwDirectionLabel {
                labelThrow.text = detail.throwArm
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

