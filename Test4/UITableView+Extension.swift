//
//  UITableView+Extension.swift
//  Test4
//
//  Created by MCS on 8/2/19.
//  Copyright © 2019 MCS. All rights reserved.
//

import UIKit

extension UITableView {
  func register<T: NibRegister & UITableViewCell>(cellType: T.Type)
  {
    register(UINib(nibName: String(describing: cellType.nibName), bundle: cellType.bundle), forCellReuseIdentifier: String(describing: cellType.reuseIdentifier))
  }
}

protocol NibRegister {
  static var bundle: Bundle? { get }
  static var reuseIdentifier: String { get }
  static var nibName: String { get }
}

extension NibRegister {
  static var bundle: Bundle? {
    return nil
  }
  static var reuseIdentifier: String {
    return String(describing: self)
  }
  static var nibName: String {
    return String(describing: self)
  }
}
