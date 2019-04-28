//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit

final class ___VARIABLE_productName___ViewController: UIViewController, View {
    typealias Presenter = ___VARIABLE_productName___ViewOutput
    var presenter: Presenter!
    
    var contentView: ___VARIABLE_productName___View!
    
    override func loadView() {
        contentView = ___VARIABLE_productName___View()
        view = contentView
    }
}

extension ___VARIABLE_productName___ViewController: ___VARIABLE_productName___ViewInput {
    
}
