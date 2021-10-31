//
//  AboutUserViewController.swift
//  HW_2.4
//
//  Created by Егор Кромин on 31.10.2021.
//

import UIKit

class AboutUserViewController: UIViewController {
    
    @IBOutlet var userInfoText: UITextView!
    
    var currentAccount: Account!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInfoText.text = currentAccount.info
        navigationController?.tabBarItem.title = currentAccount.firstName + " " + currentAccount.lastName

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.currentAccount = currentAccount
    }

    
}
