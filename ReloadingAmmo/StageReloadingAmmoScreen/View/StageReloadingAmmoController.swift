//
//  StageReloadingAmmoController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 27.01.2023.
//

import UIKit
import NetworkLayer

class StageReloadingAmmoController: UIViewController {
  

  @IBOutlet weak var stageTableView: UITableView!

    var stepListView: [StepType] = []

    override func viewDidLoad() {
      super.viewDidLoad()
      self.setupTableView()
    }

    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      self.stageTableView.reloadData()


    }

}
    extension StageReloadingAmmoController: UITableViewDataSource {

      func tableView(_ stageTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stepListView.count
      }

      func tableView(_ stageTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = stageTableView.dequeueReusableCell(withIdentifier: "StageReloading", for: indexPath) as? StageReloadingCell

        cell?.stepTextLabel.text = stepListView[indexPath.row].name_step
       // cell?.recipTextLabel.text = recipeListView[indexPath.row].ulrPic


  //      let recipeType = self.recipeListView[indexPath.row]
  //      cell?.setup(withTitle: recipeType.nameRecipe, andContent: recipeType.ulrPic)
        return cell!
      }
    }

extension StageReloadingAmmoController: UITableViewDelegate {
  
  private func setupTableView() {
//    self.stageTableView.rowHeight = 200
      self.stageTableView.rowHeight = UITableView.automaticDimension
  }
}
