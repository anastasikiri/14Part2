//
//  ViewController.swift
//  #13Login_Anastasia
//
//  Created by Anastasia Bilous on 2022-02-12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var loginLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getStartedButton.layer.cornerRadius = 25.5
        navigationController?.navigationBar.barStyle = UIBarStyle.black
    }
    
    @IBAction func goToLoginSceen(_ sender: Any) {
        performSegue(withIdentifier: "goToLoginWithGesture", sender: self)
    }
}

