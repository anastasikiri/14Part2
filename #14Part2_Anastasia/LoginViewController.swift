//
//  LoginViewController.swift
//  #13Login_Anastasia
//
//  Created by Anastasia Bilous on 2022-02-14.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var mailField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attributedStringDic: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        mailField.attributedPlaceholder = NSAttributedString(
            string: "willliamblack@gmail.com",
            attributes: attributedStringDic
        )
        
        loginButton.layer.cornerRadius = 25.5
        LoginViewController.changeRadius(name: emailView)
        LoginViewController.changeRadius(name: passwordView)
    }
    
    static func changeRadius(name:UIView) {
        name.layer.cornerRadius = 10
    }
    
    func warning (title: String) {
        let alertVc = UIAlertController(
            title: title,
            message: nil,
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "Ok",
            style: .default)
        alertVc.addAction(okAction)
        present(alertVc, animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "goHomeGamePage" {
            if  mailField.text?.isEmpty == true {
                warning(title: "Please enter your email address")
                print("Cou-cou")
                return false
            } else if passwordTextView.text?.isEmpty == true {
                warning(title: "Please enter your password or click forgot password")
                print("Chao")
                return false
            } else if passwordTextView.text?.count ?? 0 < 6  {
                warning(title: "Password must be minimum 6 symbols")
                print("salut")
                return false
            }
            print("AAAAAAA")
            return true
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let homeGamePageController = segue.destination as? HomeScreenViewController {
            homeGamePageController.view.setNeedsDisplay()
            homeGamePageController.homeGameLabel.text = "Happy to see you back again!"
            homeGamePageController.homeGameLabel.textColor = .white
        }
    }
    
    @IBAction func passwordVisibilityButton(_ sender: UIButton) {
        passwordTextView.isSecureTextEntry.toggle()
        if passwordTextView.isSecureTextEntry {
            if let image = UIImage(systemName: "eye.slash.fill") {
                sender.setImage(image, for: .normal)
            } else {
                if let image = UIImage(systemName: "eye.fill") {
                    sender.setImage(image, for: .normal)
                }
            }
        }
    }
    
    @IBAction func goToForgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "goForgotPassword", sender: self)
    }
    
    @IBAction func goToStartScreen(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

