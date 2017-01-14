//
//  TaskCellModel.swift
//  RxTodo
//
//  Created by Suyeol Jeon on 7/1/16.
//  Copyright © 2016 Suyeol Jeon. All rights reserved.
//

import RxCocoa
import RxSwift

protocol TaskCellModelType {
  var title: String { get }
  var accessoryType: UITableViewCellAccessoryType { get }
}

struct TaskCellModel: TaskCellModelType {

  let title: String
  let accessoryType: UITableViewCellAccessoryType

  init(task: Task) {
    self.title = task.title
    self.accessoryType = task.isDone ? .checkmark : .none
  }

}
