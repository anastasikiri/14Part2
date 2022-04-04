//
//  HomeScreenViewController.swift
//  #14Part2_Anastasia
//
//  Created by Anastasia Bilous on 2022-03-02.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var homeGameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToLoginPrevious(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
