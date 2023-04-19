//
//  IrregularVerbs.swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/18/23.
//

import Foundation

class IrregularVerbs {
    private(set) var verbs: [Verb] = []
    var selectedVerbs: [Verb] = []
    
    func configureVerbs() {
        verbs = [
            Verb(infinitive: "blow", pastSimple: "blew", participle: "blown"),
            Verb(infinitive: "break", pastSimple: "broke", participle: "broken"),
            Verb(infinitive: "eat", pastSimple: "ate", participle: "eaten")
        ]
    }
}
