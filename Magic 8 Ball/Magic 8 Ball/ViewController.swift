//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Thiago Andrade on 12/12/17.
//  Copyright © 2017 Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1" , "ball2" , "ball3" , "ball4" , "ball5"]
    var randomBallNumber: Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named:ballArray[randomBallNumber])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
}



