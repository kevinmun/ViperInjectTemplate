//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___InputProtocol: class {
    
   var presenter: ___FILEBASENAMEASIDENTIFIER___OutputProtocol! { get set }
    
}

protocol ___FILEBASENAMEASIDENTIFIER___OutputProtocol: class {
    
}

class ___FILEBASENAME___ {

   weak var presenter: ___FILEBASENAMEASIDENTIFIER___OutputProtocol!
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___InputProtocol {
    
}