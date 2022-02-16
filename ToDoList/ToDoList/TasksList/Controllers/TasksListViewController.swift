//
//  TasksListViewController.swift
//  ToDoList
//
//  Created by Felippe Bertges on 15/02/22.
//

import Foundation
import UIKit

final class TasksListViewController: UIViewController {

    lazy var listView: TasksListView = .init(addAction: {
        self.presentAddTaskScreen()
    })

    override func loadView() {
        view = listView
    }

    func presentAddTaskScreen() {
        present(CreateTaskViewController(), animated: true, completion: nil)
    }
}
