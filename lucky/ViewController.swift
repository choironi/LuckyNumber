//
//  ViewController.swift
//  lucky
//
//  Created by 최지우 on 2022/02/27.
//

import UIKit

class ViewController: UIViewController {

    
    var currentValue = 0
    
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawNum()
       
    }
    @IBAction func draw(_ sender: Any) {
        let message = "\(currentValue)"
        let alert = UIAlertController(title: "행운의 숫자", message: message, preferredStyle:.alert)
        let action = UIAlertAction(title : "다음", style: .default, handler: { action in self.drawNum() //closure 사용
            
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func drawNum() {
        let randomNumber = arc4random_uniform(45) + 1
        currentValue = Int(randomNumber)
        numberLabel.text = "\(currentValue)"
    
    }
}

