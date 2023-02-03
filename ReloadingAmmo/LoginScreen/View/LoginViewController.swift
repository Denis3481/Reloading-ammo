//
//  LoginViewController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 27.01.2023.
//

import UIKit
import NetworkLayer

class LoginViewController: UIViewController {
  
  var presenter: LoginPresenterProtocol? = nil
  var custReloadingView: [RecipeType] = []
  

  
  @IBOutlet weak var passwordField: UITextField!
  @IBOutlet weak var loginField: UITextField!
  
  @IBAction func loginTapButton(_ sender: Any) {
    
    presenter?.sendLoginRequest()
    
    //presenter?.getStepList(idRecipe: idRecipe[IndexPath.ro)
  }
  override func viewDidLoad() {
    super.viewDidLoad()
        
    AppConfigurator.shared.configure(controller: self)
  }
  
  func onErrorView(message: String) {
      print("Error : \(message)")
  }

  func onSuccessView(custReloading: [RecipeType]) {
    custReloadingView = custReloading
  }
  
 

  
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     guard segue.identifier == "selectAmmo" else { return }
     guard let recipeView = segue.destination as? SelectAmmoController
     else { return }
   
     recipeView.self.recipeListView = self.custReloadingView
     
  }
}

