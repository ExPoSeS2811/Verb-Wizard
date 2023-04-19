//
//  UIView+addSubViews().swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/18/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { view in
            addSubview(view)
        }
    }
}
