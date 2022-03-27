//
//  PresenterIO.swift
//  ITIS
//
//  Created by n.lyapustin on 25.03.2022.
//

import Foundation
import UIKit

protocol LoginPresenterInput {
    
}

protocol RegistrationPresenterInput {

}

protocol LoginPresenterOutput {
    func wantsToOpenRegistrtion()
    func didLogin()
}

protocol RegistrationPresenterOutput {
    func wantsToOpenLogin()
    func didRegister()
}
