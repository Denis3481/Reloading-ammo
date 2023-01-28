//
//  SelectAmmoController.swift
//  ReloadingAmmo
//
//  Created by Денис Шишкин on 27.01.2023.
//

import UIKit

class SelectAmmoController: UIViewController {
  
  @IBOutlet weak var selectTableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
      
    }
extension SelectAmmoController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if section == 0 {
      return 3
    }
    return 0
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCellId", for: indexPath)
    
    cell.textLabel?.text = "ячейка"
    return cell
  }
}

