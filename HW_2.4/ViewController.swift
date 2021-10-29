//
//  ViewController.swift
//  HW_2.3
//
//  Created by Егор Кромин on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var usernameTextField: UITextField!
    
    let trueUserName = "User"
    let truePassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func logInButtonPressed() {
        if usernameTextField.text != trueUserName || passwordTextField.text != truePassword {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
            passwordTextField.text = ""
        } else {
            performSegue(withIdentifier: "segue", sender: .none)
        }
    }
    
    @IBAction func userNameReminderPressed() {
        showAlert(title: "Reminder", message: "Your username is \"User\"")
    }
    
    @IBAction func passwordReminderPressed() {
        showAlert(title: "Reminder", message: "Your password is \"Password\"")
        passwordTextField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LogInViewController else { return }
        loginVC.userNameValue = usernameTextField.text
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
    
}

