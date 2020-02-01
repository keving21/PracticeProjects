//
//  ViewController.swift
//  WarCardGame
//
//  Created by Kevin G on 2020-01-27.
//  Copyright © 2020 Kevin G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func DealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            //player wins
            leftScore += 1
            LeftScoreLabel.text = String(leftScore)
        }
        
        else if rightNumber > leftNumber {
            //cpu wins
            rightScore += 1
            RightScoreLabel.text = String(rightScore)
        }
        
        else {
            //tie
            
        }
        
    }
    

}

