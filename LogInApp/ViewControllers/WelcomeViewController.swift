//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Anastasia Izmaylova on 17.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Привет, \(welcomeName)!"
        
    }
    
}
