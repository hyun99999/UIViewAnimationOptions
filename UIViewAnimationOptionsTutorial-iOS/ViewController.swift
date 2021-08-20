//
//  ViewController.swift
//  UIViewAnimationOptionsTutorial-iOS
//
//  Created by kimhyungyu on 2021/08/20.
//

import UIKit

class ViewController: UIViewController {

    private var isInitialImage = true
    
    @IBOutlet weak var initialImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialImageView.image = UIImage(named: "initialImg")
        initialImageView.contentMode = .scaleAspectFill
    }

    @IBAction func touchTransitionButton(_ sender: Any) {
        print("transitionButton touched.")
        
        if isInitialImage {
            self.isInitialImage = false
            initialImageView.image = UIImage(named: "transitionImg")
            UIView.transition(with: initialImageView, duration: 1, options:.transitionFlipFromTop, animations: nil, completion: nil)
        } else {
            self.isInitialImage = true
            initialImageView.image = UIImage(named: "initialImg")
            UIView.transition(with: initialImageView, duration: 1, options: .transitionFlipFromTop, animations: nil, completion: nil)
        }
    }
    
}

