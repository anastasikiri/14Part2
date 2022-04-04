//
//  CreateAccountViewController.swift
//  #14Part2_Anastasia
//
//  Created by Anastasia Bilous on 2022-02-24.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var fullNameView: UIView!
    @IBOutlet weak var phoneView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var enterPasswordView: UIView!
    @IBOutlet weak var confirmPasswordView: UIView!
    @IBOutlet weak var singUpButton: UIButton!
    @IBOutlet weak var enterPasswordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        singUpButton.layer.cornerRadius = 25
        LoginViewController.changeRadius(name: fullNameView)
        LoginViewController.changeRadius(name: phoneView)
        LoginViewController.changeRadius(name: emailView)
        LoginViewController.changeRadius(name: enterPasswordView)
        LoginViewController.changeRadius(name: confirmPasswordView)
    }
    
    @IBAction func enterPasswordVisibilityButton(_ sender: UIButton) {
        enterPasswordField.isSecureTextEntry.toggle()
        if enterPasswordField.isSecureTextEntry {
            if let image = UIImage(systemName: "eye.slash.fill") {
                sender.setImage(image, for: .normal)
            }
        } else {
            if let image = UIImage(systemName: "eye.fill") {
                sender.setImage(image, for: .normal)
            }
        }
    }
    
    @IBAction func confirmPasswordVisibilityButton(_ sender: UIButton) {
        confirmPasswordField.isSecureTextEntry.toggle()
        if confirmPasswordField.isSecureTextEntry {
            if let image = UIImage(systemName: "eye.slash.fill") {
                sender.setImage(image, for: .normal)
            }
        } else {
            if let image = UIImage(systemName: "eye.fill") {
                sender.setImage(image, for: .normal)
            }
        }
    }
    
    @IBAction func goToStartScreen(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
