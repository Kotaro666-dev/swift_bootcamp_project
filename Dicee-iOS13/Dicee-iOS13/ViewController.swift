//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let dicePattern = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    // This function will be called once the View finished loading
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = dicePattern[5]
        diceImageView2.image = dicePattern[5]
        
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
    }

    // This fuction will be called when user clicks Roll button
    // Flutter: onPressed: () { do something },
    @IBAction func rollBtnPressed(_ sender: UIButton) {
        // array.randomElement() == array[Int.random(in: lower...upper)]
        diceImageView1.image = dicePattern.randomElement()
        diceImageView2.image = dicePattern.randomElement()
        
        diceImageView1.alpha = 1.0
        diceImageView2.alpha = 1.0
    }
    
}

