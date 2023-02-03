//
//  SelectAmmoController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 27.01.2023.
//

import UIKit
import NetworkLayer

class SelectAmmoController: UIViewController   {
 
  @IBOutlet weak var selectTableView: UITableView!
  var recipeListView: [RecipeType] = []
  var recipeImage: UIImage? = nil
  var custStepView: [StepType] = []
  var presenter: LoginPresenterProtocol? = nil
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print(recipeListView.count)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

//    network.getRecipesList { [weak self] result in
//      DispatchQueue.main.async {
//        self?.recipeListView = (try? result.get()) ?? []
    print(recipeListView.count)
    self.selectTableView.reloadData()
        
//      }
//    }


  }
  
  func onErrorPres(message: String) {
//    view.onErrorView(message: message)
  }
  
  func recipeStepView (custStep: [StepType]) {
    custStepView = custStep
   
  }
   func viewAmmoPic (purl: String) -> UIImage? {
    let url = "http://backup.devmind.ru:5050/"
    let operation = DownloadOperation(url: url + purl)
      operation.completionBlock = {
              DispatchQueue.main.async {
                if let data = operation.outputImage {
                  let image = UIImage(data: data)
                  self.recipeImage = image
                }
              }
      }
    operation.start()
    
    return recipeImage
  }
  
}

  
  extension SelectAmmoController: UITableViewDataSource {
    
    func tableView(_ selectTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return recipeListView.count
    }
  
    func tableView(_ selectTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = selectTableView.dequeueReusableCell(withIdentifier: "SelectCell", for: indexPath) as? SelectTableViewCell
      
      cell?.recipTextLabel.text = recipeListView[indexPath.row].nameRecipe
      cell?.repicAmmoPic.image = viewAmmoPic(purl: recipeListView[indexPath.row].ulrPic)
      return cell!
     
    }
   
  }

  extension SelectAmmoController: UITableViewDelegate {
    
    func tableView(_ selectTableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 170
        }
        
        return UITableView.automaticDimension
    }
  
    
  }
 func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  guard segue.identifier == "StageReloading" else { return }
  guard segue.destination is StageReloadingAmmoController
  else { return }

}

  

