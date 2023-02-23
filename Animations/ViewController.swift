//
//  ViewController.swift
//  HomeWork3_Ex4
//
//  Created by Kirill Romanenko on 24.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonBounce: UIButton!
    
    @IBOutlet weak var viewCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonBouncePressed(_ sender: Any) {
        myAnimation()
    }
    
    func myAnimation(){
        let firstCenter = self.viewCircle.center

        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 4, options: [.autoreverse, .repeat]) {
            self.viewCircle.center = self.view.center
        } completion: { (completed) in
            self.viewCircle.center = firstCenter
        }

        
    }
    
}

