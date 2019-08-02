//
//  TableViewCell.swift
//  Test4
//
//  Created by MCS on 8/2/19.
//  Copyright © 2019 MCS. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, NibRegister {

  @IBOutlet weak var label: UILabel!
  
  override func awakeFromNib() {
      super.awakeFromNib()
      // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

      // Configure the view for the selected state
  }
    
}
