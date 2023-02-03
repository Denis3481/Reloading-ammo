//
//  LoginPresenter.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 29.01.2023.
//

import Foundation
import NetworkLayer

class LoginPresenter: NetworkServiceDelegate, LoginPresenterProtocol {
  func getStepList(idRecipe: Int) {
    
  }
  
 
  func onErrorPres(message: String) {
    view.onErrorView(message: message)
  }
  
  func onSuccessPres(custReloading: [RecipeType]) {
    view.onSuccessView(custReloading: custReloading)
  }
  
  
  
  private var network: NetworkServiceProtocol

  private var loginValue: String = ""
  private var passwordValue: String = ""
  private var view: LoginViewController

  init(network: NetworkServiceProtocol, view: LoginViewController) {
      self.network = network
      self.view = view

  }

  func sendLoginRequest() {
    
      network.delegate = self
      network.getRecipesList()

       
      }
  func sendStepRequest (idRecipe: Int) {
    network.delegate = self
    network.getStepList(idRecipe: idRecipe)
  }
  }
  
