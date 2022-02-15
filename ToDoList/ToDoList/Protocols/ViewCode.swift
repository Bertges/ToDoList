//
//  ViewCode.swift
//  ToDoList
//
//  Created by Felippe Bertges on 15/02/22.
//

import Foundation

protocol ViewCode {
    func setupViews()
    func setupViewHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCode {
    func setupViews() {
        setupViewHierarchy()
        setupConstraints()
        configureViews()
    }

    func setupViewHierarchy() { }
    func setupConstraints() { }
    func configureViews() { }
}
