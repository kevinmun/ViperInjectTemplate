//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___VARIABLE_moduleName___PresenterProtocol: class {
    
}

protocol ___VARIABLE_moduleName___InterfaceProtocol: class {
    
    var presenter: ___VARIABLE_moduleName___PresenterProtocol!  { get set }
    
}

class ___VARIABLE_moduleName___Presenter {

	weak private var interface: ___VARIABLE_moduleName___InterfaceProtocol?
	private let interactor: ___VARIABLE_moduleName___InteractorInputProtocol
    private let router: ___VARIABLE_moduleName___RouterInputProtocol

    init(interface: ___VARIABLE_moduleName___InterfaceProtocol, interactor: ___VARIABLE_moduleName___InteractorInputProtocol, router: ___VARIABLE_moduleName___RouterInputProtocol) {
        self.interface = interface
        self.interactor = interactor
        self.router = router
        
        self.interactor.presenter = self
    }
    
}

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterProtocol {
    
}

extension ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___InteractorOutputProtocol {
    
}