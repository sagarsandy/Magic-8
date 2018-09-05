//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sagar Sandy on 01/08/18.
//  Copyright © 2018 Sagar Sandy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        changeAnswerImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AskButtonClicked(_ sender: UIButton) {
        
        changeAnswerImage()
        
    }
    
    func changeAnswerImage() {
        
        answerImageView.image = UIImage(named: "ball\(Int(arc4random_uniform(4)+1))")
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeAnswerImage()
    }
    
}

