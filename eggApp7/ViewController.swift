//
//  ViewController.swift
//  eggApp7
//
//  Created by 梶原敬太 on 2019/06/05.
//  Copyright © 2019 梶原敬太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = String(count)
        textLabel.text = ""
    }


    var count:Int = 10
    
    let tamago1:UIImage = UIImage(named: "egg01")!
    let tamago2:UIImage = UIImage(named: "egg02")!
    let tamago3:UIImage = UIImage(named: "egg03")!
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var tamago: UIButton!
    
    @IBAction func Button(_ sender: Any) {
        
        count -= 1
        countLabel.text = String(count)
        
        if (count == 5){
            textLabel.text = "ピキピキ"
            tamago.setImage(tamago2, for: .normal)
        }else if (count == 0){
            textLabel.text = "パコ"
            tamago.setImage(tamago3, for: .normal)
        }
        
        
        
    }
    
    
    
    
    
}

