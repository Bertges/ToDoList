//
//  TasksListView.swift
//  ToDoList
//
//  Created by Felippe Bertges on 15/02/22.
//

import UIKit

final class TasksListView: UIView, UITableViewDataSource {

    lazy var addTaskButton: UIButton = {
        let view: UIButton = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = true
        view.setTitle("Adicionar Tarefa", for: .normal)
        return view
    }()

    lazy var tableView: UITableView = {
        let view: UITableView = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = true
        view.dataSource = self
        return view
    }()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
