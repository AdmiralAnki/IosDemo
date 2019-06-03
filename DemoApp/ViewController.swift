//
//  ViewController.swift
//  DemoApp
//
//  Created by Ankith kirti on 03/06/19.
//  Copyright © 2019 Ankith kirti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImage: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore=0
    var rightScore=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        leftImageView.im
    }

    
    
    @IBAction func dealButton(_ sender: Any) {
        
//        print("deal tapped")
        
//        leftImageView.image = UIImage(named: "card5")
//        rightImage.image = UIImage(named: "card14")
        
        let rightNum = Int.random(in: 2...14)
        let leftNum = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNum)")
        rightImage.image = UIImage(named: "card\(rightNum)")

        if leftNum>rightNum{
            //player gets a point
            leftScore+=1
            leftScoreLabel.text="\(leftScore)"
        }
        else if leftNum<rightNum{
            //comp gets a point
            rightScore+=1
            rightScoreLabel.text=String(rightScore)
        }
        else{
            //tie
            rightScore+=1
            leftScore+=1
            leftScoreLabel.text=String(leftScore)
            rightScoreLabel.text=String(rightScore)
            
        }
        
    }
    
}

