//
//  CreateTaskView.swift
//  ToDoList
//
//  Created by Felippe Bertges on 15/02/22.
//

import Foundation
import UIKit

final class CreateTaskView: UIView, ViewCode {

    var titleTextField: UITextField = {
        let view: UITextField = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .roundedRect
        view.placeholder = "Título"
        return view
    }()

    var descriptionTextView: UITextView = {
        let view: UITextView = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        return view
    }()

    lazy var confirmButton: UIButton = {
        let view: UIButton = .init(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("CONFIRMAR", for: .normal)
        view.backgroundColor = .systemBlue
        return view
    }()

    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        addSubview(titleTextField)
        addSubview(descriptionTextView)
        addSubview(confirmButton)
    }

    func setupConstraints() {
        titleTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        titleTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        titleTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        titleTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true

        descriptionTextView.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true

        confirmButton.topAnchor.constraint(equalTo: descriptionTextView.bottomAnchor, constant: 20).isActive = true
        confirmButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        confirmButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        confirmButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
    }

    func configureViews() {
        backgroundColor = .white
    }
}
