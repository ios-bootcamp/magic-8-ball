//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by student12 on 2/2/19.
//  Copyright © 2019 pedro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballArray: [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 1 ... 5)
        imageView.image = UIImage(named: "ball\(randomBallNumber)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    } // end motionEnded()

}

