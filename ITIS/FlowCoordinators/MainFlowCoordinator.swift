//
//  MainFlowCoordinator.swift
//  ITIS
//
//  Created by n.lyapustin on 25.03.2022.
//

import UIKit

final class MainFlowCoordinator: FlowCoordinatorProtocol {

    private let rootView: UIViewController
    private var tabBarView: UITabBarController?

    init(rootView: UIViewController) {
        self.rootView = rootView
    }

    func start(animated: Bool) {
        tabBarView = UITabBarController()
        let loginFlow = AuthFlowCoordinator(rootController: self)
        let loginFlow2 = AuthFlowCoordinator(rootController: self)
        loginFlow.start(animated: true)
        loginFlow2.start(animated: true)
    }

    func finish(animated: Bool) {

    }
}

extension MainFlowCoordinator: TabBarFlowCoordinatorProtocol {
    func appendView(_ view: UIViewController) {
        tabBarView?.addChild(view)
    }
}
