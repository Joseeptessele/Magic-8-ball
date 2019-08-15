//
//  ViewController.swift
//  Magic8Ball
//
//  Created by José Eduardo Pedron Tessele on 15/08/19.
//  Copyright © 2019 José P Tessele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let balls = ["ball1","ball2","ball3","ball4","ball5"]
    var randomQuestion: Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func askButton(_ sender: UIButton) {
        generateQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateQuestion()
    }
    
    func generateQuestion(){
        randomQuestion = Int.random(in: 0 ... 4)
        ballImage.image = UIImage(named: balls[randomQuestion])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateQuestion()
    }
    
    


}

