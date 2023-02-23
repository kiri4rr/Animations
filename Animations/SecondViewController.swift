//
//  SecondViewController.swift
//  HomeWork3_Ex4
//
//  Created by Kirill Romanenko on 24.10.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var viewCircle: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonRunPressed(_ sender: UIButton) {
        myAnimation {
            sender.setTitle("Run again", for: .normal)
        }
    }
    
    func myAnimation(myComplition: @escaping (()->())){
        UIView.animateKeyframes(withDuration: 4, delay: 0, options: [.calculationModeLinear]) {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2) {
                self.viewCircle.center = CGPoint(x: 100, y: 100)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.3) {
                self.viewCircle.center = CGPoint(x: 150, y: 200)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.4) {
                self.viewCircle.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.midY)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.5) {
                self.viewCircle.center = CGPoint(x: self.view.safeAreaLayoutGuide.layoutFrame.maxX - self.viewCircle.frame.width / 2,
                                                 y: self.view.safeAreaLayoutGuide.layoutFrame.maxY - self.viewCircle.frame.height / 2)
            }
        } completion: { (completed) in
            myComplition()
        }
    }

}
