//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class ___VARIABLE_productName___View: UIView {
    init() {
        super.init(frame: .zero)
        setupView()
        setupSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .white
    }
    
    private func setupSubviews() {
        let label = UILabel()
        label.text = "___VARIABLE_productName___"
        addSubview(label)
        
        label.snp.makeConstraints { maker in
            maker.center.equalToSuperview()
        }
    }
}
