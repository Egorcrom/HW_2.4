//
//  ImageViewController.swift
//  HW_2.4
//
//  Created by Егор Кромин on 31.10.2021.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var currentAccount: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: currentAccount.photo)
    }


}
