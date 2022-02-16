//
//  CreateTaskViewController.swift
//  ToDoList
//
//  Created by Felippe Bertges on 15/02/22.
//

import Foundation
import UIKit

final class CreateTaskViewController: UIViewController {

    let createTaskView: CreateTaskView = .init()

    override func loadView() {
        view = createTaskView
    }
    
}
