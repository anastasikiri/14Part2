//
//  ForgotPasswordViewController.swift
//  #14Part2_Anastasia
//
//  Created by Anastasia Bilous on 2022-03-02.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var emailView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UINavigationBar.appearance().shadowImage = UIImage()
        continueButton.layer.cornerRadius = 25
        LoginViewController.changeRadius(name: emailView)
    }
    
    @IBAction func goBackToLogin(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

