//
//  BaseInteractor.swift
//  ViperTest
//
//  Created by Andrew Mysyk on 4/27/19.
//  Copyright © 2019 Andrew Mysyk. All rights reserved.
//

import Foundation
import UIKit

public protocol Interactor: class {
    associatedtype Presenter: AnyObject
    var presenter: Presenter! { get }
}

public protocol View: class {
    associatedtype Presenter: AnyObject
    var presenter: Presenter! { get }
}

public protocol Presenter: class {
    associatedtype View: AnyObject
    associatedtype Interactor: AnyObject
    associatedtype Router: AnyObject
    var view: View! { get }
    var interactor: Interactor! { get }
    var router: Router! { get }
}
