//
//  NetworkLayerService.swift
//  
//
//  Created by Денис Шишкин on 29.01.2023.
//

import Foundation

public class NetworkLayerService: NetworkServiceProtocol {

  public var delegate: NetworkServiceDelegate? = nil
  
  public init() {}

  public func getRecipesList() {
  
      let url = URL(string: "http://backup.devmind.ru:5050/recipes")!
      let urlRequest = URLRequest(url: url)

      URLSession.shared.dataTask(with: urlRequest) { data, response, error in
        if error != nil {
            self.delegate?.onErrorPres(message: "URL Session Task Failed: \(error!.localizedDescription)")
        }

        if data == nil {
            self.delegate?.onErrorPres(message: "URL Session Task Failed: \(error!.localizedDescription)")
        }

        do {
            let getAllReloadingStage = try JSONDecoder().decode(Select.self, from: data!)
            let custom = getAllReloadingStage.data.map({ item in
              RecipeType(idRecipe: item.idRecipe, nameRecipe: item.nameRecipe, ulrPic: item.ulrPic)
            })
            self.delegate?.onSuccessPres(custReloading: custom)
            
        } catch {
            self.delegate?.onErrorPres(message: "URL Session Task Failed: )")
          }
      }.resume()
  }
  
  public func getStepList(idRecipe: Int) {
    
    let url = URL(string: "http://backup.devmind.ru:5050/step/" + String(idRecipe))!
        let urlRequest = URLRequest(url: url)

        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
          if error != nil {
              self.delegate?.onErrorPres(message: "URL Session Task Failed: \(error!.localizedDescription)")
          }

          if data == nil {
              self.delegate?.onErrorPres(message: "URL Session Task Failed: \(error!.localizedDescription)")
          }

          do {
              let getAllStepRecipes = try JSONDecoder().decode(StepSelect.self, from: data!)
              let customStep = getAllStepRecipes.data.map({ item in
                StepType(ulr_pic: item.ulrPic, id_step: item.idStep, name_step: item.nameStep, desc_step: item.descStep)
              })
              //self.delegate?.onSuccessPres(custReloading: customStep)
              
              } catch {
              self.delegate?.onErrorPres(message: "URL Session Task Failed: )")
          }
        }.resume()
    }
  
}

  
