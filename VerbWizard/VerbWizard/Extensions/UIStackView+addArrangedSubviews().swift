//
//  UIStackView+addSubviews().swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/18/23.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { view in
            addArrangedSubview(view)
        }
    }
}

