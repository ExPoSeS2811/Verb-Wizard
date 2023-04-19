//
//  Verb.swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/18/23.
//

import Foundation
struct Verb {
    let infinitive: String
    let pastSimple: String
    let participle: String
    
    var translate: String {
        infinitive.localized
    }
}
