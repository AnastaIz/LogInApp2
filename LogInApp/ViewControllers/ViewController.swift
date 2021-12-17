//
//  ViewController.swift
//  LogInApp
//
//  Created by Anastasia Izmaylova on 17.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
//    private let user = "user"
//    private let password = "password"
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let userNameVC = segue.destination as! WelcomeViewController
//        userNameVC.name = user
//    }
//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers ?? []
        
        for viewController in viewControllers {
            if let userNameVC = viewController as? WelcomeViewController{
                userNameVC.welcomeName = user.fullName
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMyselfViewController
                aboutUserVC.title = user.fullName
                
            }
        }
    }

    @IBAction func logInCheck(_ sender: UIButton) {
        if userNameTextField.text != user.userName || passwordTextField.text != user.userPassword {
            showAlert(title: "User Name or Password is not correct", message: "Please check and try again", textField: passwordTextField)
        }
    }
    
    @IBAction func forgotValues(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "OOPS!", message: "Your name is user")
        : showAlert(title: "OOPS!", message: "Your password is pasword")
            
        }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
}

//MARK: -Navigation

extension ViewController {
    private func showAlert (title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

