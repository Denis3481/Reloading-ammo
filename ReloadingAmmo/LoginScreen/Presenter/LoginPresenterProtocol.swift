//
//  LoginPresenterProtocol.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 29.01.2023.
//

import Foundation
import NetworkLayer

protocol LoginPresenterProtocol {

    func sendLoginRequest()
    func getStepList(idRecipe: Int)
    func onErrorPres(message: String)
    func onSuccessPres(custReloading: [RecipeType])
  
    
  
  
}
