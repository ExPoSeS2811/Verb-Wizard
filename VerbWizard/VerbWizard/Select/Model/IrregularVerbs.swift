//
//  IrregularVerbs.swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/18/23.
//

import Foundation

final class IrregularVerbs {
    // Singleton
    static var shared = IrregularVerbs()
    
    private init() {
        configureVerbs()
        selectedVerbs = verbs
    }
    
    // MARK: - Properties
    var selectedVerbs: [Verb] = []
    private(set) var verbs: [Verb] = []
    
    // MARK: - Methods
    private func configureVerbs() {
        verbs = [
            Verb(infinitive: "blow", pastSimple: "blew", participle: "blown"),
            Verb(infinitive: "break", pastSimple: "broke", participle: "broken"),
            Verb(infinitive: "eat", pastSimple: "ate", participle: "eaten")
        ]
    }
}
