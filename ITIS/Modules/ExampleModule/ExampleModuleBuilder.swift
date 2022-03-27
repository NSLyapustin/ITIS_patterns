//
//  ExampleModuleBuilder.swift
//  ITIS
//
//  Created by n.lyapustin on 25.03.2022.
//

import Foundation
import UIKit

final class Exampled {

    func build(what: What) -> UIViewController {
        let presenter = Presenter(dataService: DataService())
        let viewConrtoller = ViewController(output: presenter)
        presenter.view = viewConrtoller
        return viewConrtoller
    }
}
