//
//  LoginFlowCoordinator.swift
//  ITIS
//
//  Created by n.lyapustin on 25.03.2022.
//

import Foundation
import UIKit

final class AuthFlowCoordinator: FlowCoordinatorProtocol {

    private let rootController: TabBarFlowCoordinatorProtocol

    private weak var loginView: UIViewController?
    private weak var registerView: UIViewController?

    init(rootController: TabBarFlowCoordinatorProtocol) {
        self.rootController = rootController
    }

    func start(animated: Bool) {
        rootController.appendView(ExampleModuleBuilder().build())
    }

    func finish(animated: Bool) {
        loginView = nil
        registerView = nil
    }
}

extension AuthFlowCoordinator: LoginPresenterOutput {
    func wantsToOpenRegistrtion() {
        loginView?.dismiss(animated: true, completion: nil)
        let presenter: RegistrationPresenterInput = Presenter(dataService: DataService())
        let view = presenter.start()
        self.registerView = view
        rootController.appendView(view)
    }

    func didLogin() {
        <#code#>
    }
}

extension AuthFlowCoordinator: RegistrationPresenterOutput {
    func wantsToOpenLogin() {
        <#code#>
    }

    func didRegister() {
        <#code#>
    }


}
