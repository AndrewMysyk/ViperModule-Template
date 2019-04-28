//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

class ___VARIABLE_productName___ {
    static func create() -> (view: UIViewController, input: ___VARIABLE_productName___Input) {
        let view = ___VARIABLE_productName___ViewController(nibName: nil, bundle: nil)
        let presenter = ___VARIABLE_productName___Presenter()
        let interactor = ___VARIABLE_productName___Interactor()
        let router = ___VARIABLE_productName___Router()
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        
        return (view, router)
    }
}
