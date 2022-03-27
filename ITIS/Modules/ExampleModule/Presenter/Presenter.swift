//
//  Presenter.swift
//  ITIS
//
//  Created by n.lyapustin on 25.03.2022.
//

import Foundation
import UIKit

class Presenter {

    weak var view: ViewControllerInput?
    private var dataService: DataServiceProtocol

    init(dataService: DataServiceProtocol) {
        self.dataService = dataService
    }

    private func updateView() {
        view?.updateView(with: ["Albert", "Krasavchik"])
    }
}

extension Presenter: ViewControllerOutput {
    func viewDidLoad() {
        updateView()
    }

    func didSelectRow(at: Int) {

    }
}

extension Presenter: LoginPresenterInput {
    func start() -> UIViewController {
        UIViewController()
    }
}

extension Presenter: RegistrationPresenterInput {
    func start() -> UIViewController {
        UIViewController()
    }
}
