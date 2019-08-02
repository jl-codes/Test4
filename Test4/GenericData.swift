//
//  GenericData.swift
//  Test4
//
//  Created by MCS on 8/2/19.
//  Copyright © 2019 MCS. All rights reserved.
//

import Foundation

class GenericData<T> {
  var value: T {
    didSet {
      for connectionList in connectors {
        connectionList.connection?.reciever(value)
      }
    }
  }
  
  var connectors: [ConnectionList<T>] = []
  
  init(_ setValue: T) {
    value = setValue
  }

//  func replaceGeneric<T, U>(value: T, newValue: U)  {
//    print("\(value)")
//    print("\(newValue)")
//    print("\(value)", "\(newValue)")
//
//    let value = newValue
//    print("\(value)")
//  }
}

class ConnectionList<T> {
  weak var connection: Connection<T>?
  init(_ c: Connection<T>) { connection = c }
}


class Connection<T> {
  typealias Reciever = (T) -> Void
  var reciever: Reciever
  
  init(_ reciever: @escaping Reciever) {
    self.reciever = reciever
  }
  
  func connect(generic: GenericData<T>) {
    generic.connectors.append(ConnectionList(self))
  }
}
