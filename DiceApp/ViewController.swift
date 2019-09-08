//
//  ViewController.swift
//  DiceApp
//
//  Created by Mostafa on 9/7/19.
//  Copyright © 2019 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let diceArray = ["dice1", "dice2" ,"dice3" ,"dice4","dice5","dice6"]
    

    var randomDice1:Int = 0
    var randomDice2:Int = 0

    
    
    
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func rollButton(_ sender: UIButton) {
        
    diceImageUpdate ()
        
    }
    func diceImageUpdate () {	
        
        
        randomDice1 = Int.random(in: 0...5)
        randomDice2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage.init(named: diceArray[randomDice1])
        diceImageView2.image = UIImage.init(named: diceArray[randomDice2])
    }
}

