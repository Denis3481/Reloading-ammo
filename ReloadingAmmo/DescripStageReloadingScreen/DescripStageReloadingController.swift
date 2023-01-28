//
//  DescripStageReloadingController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 28.01.2023.
//

import UIKit

class DescripStageReloadingController: UIViewController {
  
  @IBOutlet weak var descripTableView: UITableView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
}
extension DescripStageReloadingController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return 2
    }
    return 0
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "DescripStageCell", for: indexPath)
    
    cell.textLabel?.text = "Описание этапа релоадинга"
    return cell
  }
}
