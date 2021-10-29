//
//  LogInViewController.swift
//  HW_2.3
//
//  Created by Егор Кромин on 27.10.2021.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userNameLabel: UILabel!
    
    var userNameValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientBackgroundColor()
        userNameLabel.text = "Welcome, " + userNameValue + "!"
    }
    
    private func gradientBackgroundColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.startPoint = CGPoint(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.colors = [UIColor.systemGray5.cgColor ,UIColor.systemGray2.cgColor, UIColor.yellow.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
