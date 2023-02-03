import Foundation

public protocol NetworkServiceDelegate {
  
  func onErrorPres(message: String)
  func onSuccessPres(custReloading: [RecipeType])

}
