//
//  ViewController.swift
//  DiceGame
//
//  Created by Sumaiya Mohamed on 2/21/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var dice =  ["1","2","3","4","5","6"]
    var Dice2:[String] = []
    
    
    @IBOutlet var diceImages: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
func changeImage(){
    Dice2 = []

        
for _ in 1...6{
let move = dice.randomElement()
Dice2.append(move!)
    
    
    for i in 0..<Dice2.count{
    diceImages[i].image = UIImage(named:Dice2[i])
            }

    
    
}
}

    var b = -1

    @IBAction func roll(_ sender: UIButton) {
    changeImage()
if b == dice.count{
   b = 0
   }
}

  
    

}

