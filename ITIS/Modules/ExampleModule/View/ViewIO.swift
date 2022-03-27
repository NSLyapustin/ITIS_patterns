//
//  ViewIO.swift
//  ITIS
//
//  Created by n.lyapustin on 25.03.2022.
//

import Foundation

protocol ViewControllerInput: AnyObject {
    func updateView(with items: [String])
    func showError()
}

protocol ViewControllerOutput {
    func viewDidLoad()
    func didSelectRow(at: Int)
}
