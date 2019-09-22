//
//  ViewController.swift
//  Super App
//
//  Created by Luthfi Learn Quran on 22/09/19.
//  Copyright © 2019 Luthviar Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomIndexDice1: Int = 0
    var randomIndexDice2: Int = 0
    
    let diceArray = ["korandice1", "korandice2", "korandice3", "korandice4", "korandice5", "korandice6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func rollButton(_ sender: UIButton) {
        
        randomIndexDice1 = Int(arc4random_uniform(6))
        randomIndexDice2 = Int(arc4random_uniform(6))
        
        
        diceImage1.image = UIImage(named: diceArray[randomIndexDice1])
        diceImage2.image = UIImage(named: diceArray[randomIndexDice2])
        
    }
    

}

