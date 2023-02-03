//
//  DI.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 29.01.2023.
//

import Foundation
import UIKit
import NetworkLayer

class AppConfigurator {
  
  public static let shared = AppConfigurator()
  
  private init() {}
 
  func configure(controller: UIViewController) {
      if let loginController = controller as? LoginViewController {
        let presenter = LoginPresenter(network: NetworkLayerService(), view: loginController)
          loginController.presenter = presenter
      }
  }
  
}
