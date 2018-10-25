//
//  ViewController.swift
//  LoginApp-Day-2
//
//  Created by Ye Ko Ko Htet on 10/21/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var lblForgetPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.addTarget(self, action: #selector(onClickLogin), for: .touchUpInside)
        
    }

    @objc func onClickLogin() {
        let username = tfUsername.text!
        let password = tfPassword.text!
        
        print("\(username) and \(password)")
        
        if username.elementsEqual("admin") && password.elementsEqual("123") {
            
//            performSegue(withIdentifier: Contstants.SegueId.LOGIN_SEGUE, sender: username)
            
            let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! UINavigationController
            
            let secondViewController = navigationController.viewControllers[0] as! SecondViewController
            
            secondViewController.username = username
            
            self.present(navigationController, animated: true, completion: nil)

        } else {
            
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == Contstants.SegueId.LOGIN_SEGUE {
//            let vc = segue.destination as! SecondViewController
//            vc.username = sender as? String
//        }
//    }
}

