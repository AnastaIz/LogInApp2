//
//  AboutMyselfViewController.swift
//  LogInApp
//
//  Created by Anastasia Izmaylova on 17.12.2021.
//

import UIKit

class AboutMyselfViewController: UIViewController {

  @IBOutlet weak var aboutMyselfInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        aboutMyselfInfo.text = mySelf.age + " " + mySelf.city + " " + mySelf.coding
    }
    


}
