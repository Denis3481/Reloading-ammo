//
//  NetworkServiceProtocol.swift
//  
//
//  Created by Денис Шишкин on 29.01.2023.
//

import Foundation

public protocol NetworkServiceProtocol {
  
  func getRecipesList()
  func getStepList(idRecipe: Int)
  var delegate: NetworkServiceDelegate? { get set }
  
}


