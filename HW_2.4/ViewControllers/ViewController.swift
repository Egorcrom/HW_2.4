//
//  ViewController.swift
//  HW_2.4
//
//  Created by Егор Кромин on 29.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var usernameTextField: UITextField!
    
    var chosenAccount: Account!
    

    @IBAction func logInButtonPressed() {
        if accountsCheck() == true {
            performSegue(withIdentifier: "Segue", sender: .none)
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTextField.text = ""
        }
        
    }
    
    @IBAction func userNameReminderPressed() {
        showAlert(title: "Reminder", message: "Here's the list of usernames:\n\(listOfUserNames())\n you can use any of it.") 
    }
    
    @IBAction func passwordReminderPressed() {
        showAlert(title: "Reminder", message: "Your password is simillar to your username")
        passwordTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        for viewController in tabBarController.viewControllers! {
                     if let loginVC = viewController as? LogInViewController {
                         loginVC.currentAccount = chosenAccount
                     }else if let navigationVC = viewController as? UINavigationController {
                         let aboutUserVC = navigationVC.topViewController as! AboutUserViewController
                         aboutUserVC.currentAccount = chosenAccount
                     }
        }
    }
        
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        usernameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
}

extension ViewController: UITextFieldDelegate {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func textFieldReturn() {
        passwordTextField.becomeFirstResponder()
    }
    
    func accountsCheck() -> Bool{
        for account in accountsArray {
            if usernameTextField.text != account.username || passwordTextField.text != account.password{
                continue
            } else {
                chosenAccount = account
                return true
            }
        }
        return false
    }
    
    func listOfUserNames() -> [String] {
        var usernames: [String] = []
        for temp in accountsArray {
            usernames.append(temp.username)
        }
        return usernames
    }
}

