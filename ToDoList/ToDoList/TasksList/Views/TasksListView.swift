//
//  TasksListView.swift
//  ToDoList
//
//  Created by Felippe Bertges on 15/02/22.
//

import UIKit

final class TasksListView: UIView, UITableViewDataSource, ViewCode {

    lazy var addTaskButton: UIButton = {
        let view: UIButton = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Adicionar Tarefa", for: .normal)
        view.backgroundColor = .systemBlue
        view.addTarget(self, action: #selector(addTaskAction), for: .touchUpInside)
        return view
    }()

    lazy var tableView: UITableView = {
        let view: UITableView = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.dataSource = self
        return view
    }()

    let addAction: (() -> Void)

    init(addAction: @escaping (() -> Void)) {
        self.addAction = addAction
        super.init(frame: .zero)

        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    func setupViewHierarchy() {
        addSubview(addTaskButton)
        addSubview(tableView)
    }

    func setupConstraints() {
        addTaskButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        addTaskButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        addTaskButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        addTaskButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

        tableView.topAnchor.constraint(equalTo: addTaskButton.bottomAnchor, constant: 20).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
    }

    func configureViews() {
        backgroundColor = .white
    }

    @objc
    func addTaskAction() {
        addAction()
    }
}
