//
//  ViewController.swift
//  Test4
//
//  Created by MCS on 8/2/19.
//  Copyright © 2019 MCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.register(cellType: TableViewCell.self)
    
    
  }


}

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
    var cellString = cell.label
    cellString?.text = "\(indexPath.row)"
    
    
    if cellString?.text == "0" {
      var word: GenericData<String>
      word.value = "Wow!"
      
      let firstConnection = Connection() { [unowned self] word in
        cellString?.text = word
      }
      firstConnection.connect(generic: word)
    }
    
    return cell
  }
}
