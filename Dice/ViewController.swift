//
//  ViewController.swift
//  Dice
//
//  Created by DDUKK on 18/08/23.
//

import UIKit

class ViewController: UIViewController {
    let diceimage=["1","2","3","4","5","6"]
    var score = 0;
   

    override func viewDidLoad() {
        super.viewDidLoad()
        Image1.image=UIImage(named: "1")
        Image2.image=UIImage(named: "2")
        // Do any additional setup after loading the view.
        
    }
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var Image2: UIImageView!
    
    @IBOutlet weak var mark: UILabel!
    @IBAction func Roll(_ sender: Any) {
        var r1=Int(arc4random_uniform(6))
        var r2=Int(arc4random_uniform(6))
        Image1.image=UIImage(named: diceimage[r1])
        Image2.image=UIImage(named: diceimage[r2])
        if(r1==r2){
            score = score + 1
            mark.text = "\(score)"
            
        }
    }
}

