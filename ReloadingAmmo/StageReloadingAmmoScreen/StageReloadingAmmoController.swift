//
//  StageReloadingAmmoController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 27.01.2023.
//

import UIKit

class StageReloadingAmmoController: UIViewController {
  

  @IBOutlet weak var stageTableView: UITableView!
  
//  override func viewDidLoad() {
//    super.viewDidLoad()
//  }
//
//    }
//extension StageReloadingAmmoController: UITableViewDataSource {
//
//  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    if section == 0 {
//      return 2
//    }
//    return 0
//  }
//  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell = tableView.dequeueReusableCell(withIdentifier: "StageReloading", for: indexPath)
//
//    cell.textLabel?.text = "Список шагов релоадинга"
//    return cell
//  }
//}
  override func viewDidLoad() {
    super.viewDidLoad()

  }
}
extension StageReloadingAmmoController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return 2
    }
    return 0
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "StageReloading", for: indexPath)
    
    cell.textLabel?.text = "Список шагов релоадинга"
    return cell
  }
}

