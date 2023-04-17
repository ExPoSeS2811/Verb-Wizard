//
//  String+localized.swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/17/23.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
