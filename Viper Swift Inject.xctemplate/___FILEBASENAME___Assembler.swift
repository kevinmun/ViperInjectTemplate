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

class ___FILEBASENAMEASIDENTIFIER___ {
    
    private let assembler: Assembler
    
    init(parentAssembler: Assembler) {
	assembler = Assembler([___VARIABLE_moduleName___Container()], parent: parentAssembler)
    
}