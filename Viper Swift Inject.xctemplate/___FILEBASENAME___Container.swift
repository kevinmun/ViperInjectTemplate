//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import Swinject

class ___FILEBASENAMEASIDENTIFIER___: Assembly {
    
    func assemble(container: Container) {
        container.register(___VARIABLE_moduleName___InteractorInputProtocol.self) { _ in
            ___VARIABLE_moduleName___Interactor()
        }
        
        container.register(___VARIABLE_moduleName___RouterInputProtocol.self) { (r, parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol) in
            ___VARIABLE_moduleName___Router(parentRouter: parentRouter)
        }
        
        container.register(___VARIABLE_moduleName___PresenterProtocol.self) { (r, interface: ___VARIABLE_moduleName___InterfaceProtocol, parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol) in
            let interactor = r.resolve(___VARIABLE_moduleName___InteractorInputProtocol.self)!
            let router = r.resolve(___VARIABLE_moduleName___RouterInputProtocol.self, argument: parentRouter)!
            return ___VARIABLE_moduleName___Presenter(interface: interface, interactor: interactor, router: router)
        }
        
        container.register(___VARIABLE_moduleName___InterfaceProtocol.self) {  (r, parentRouter: ___VARIABLE_moduleName___ParentRouterProtocol) in
            let controller = ___VARIABLE_moduleName___Controller()
            let presenter = r.resolve(___VARIABLE_moduleName___PresenterProtocol.self, argument: (controller as ___VARIABLE_moduleName___InterfaceProtocol))!
            controller.presenter = presenter
            
            return controller
        }

    }
    
}