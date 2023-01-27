//
//  LoginViewController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 27.01.2023.
//

import UIKit

class LoginViewController: UIViewController {
  @IBAction func loginTapButton(_ sender: Any) {
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard
      segue.identifier == "SelectAmmo"
    else {return}
  }
  }
  
  @IBOutlet weak var passwordField: UITextField!
  @IBOutlet weak var loginField: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
   
  }

//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    guard
//      segue.identifier == "selectAmmo"
//    else {return}
//  }


}

