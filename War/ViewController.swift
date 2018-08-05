//
//  ViewController.swift
//  War
//
//  Created by George on 05/08/2018.
//  Copyright © 2018 George Ashton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftCard: UIImageView!
    @IBOutlet weak var rightCard: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!

    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

  
    @IBAction func dealTapped(_ sender: Any) {
        
        
        // Randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        // Change the image views
        leftCard.image = UIImage(named: "card\(leftRandomNumber)")
        rightCard.image = UIImage(named: "card\(rightRandomNumber)")
        
        // Compare the numbers
        
        if leftRandomNumber > rightRandomNumber {
            // Update the score
            leftScore += 1
            
            // Update the label
            leftScoreLabel.text = String(leftScore)
            
        }
        else if rightRandomNumber > leftRandomNumber {
            // Update the score
            rightScore += 1
            
            // Update the label
            rightScoreLabel.text = String(rightScore)
            
        }
        else if leftRandomNumber == rightRandomNumber {
            
        }
    }
    
    
}

