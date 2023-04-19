//
//  SelectVerbsViewController.swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/17/23.
//

import UIKit

final class SelectVerbsViewController: UITableViewController {
    // MARK: - Properties
    private var dataSource = IrregularVerbs()
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Select verbs".localized
        view.backgroundColor = .white
        tableView.register(SelectVerbTableViewCell.self, forCellReuseIdentifier: "SelectVerbTableViewCell")
        dataSource.configureVerbs()
    }
    
    // MARK: - Private methods
    private func isSelected(verb: Verb) -> Bool {
        dataSource.selectedVerbs.contains(where: {$0.infinitive == verb.infinitive})
    }

}

// MARK: - TableView DataSource & Delegates
extension SelectVerbsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.verbs.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SelectVerbTableViewCell", for: indexPath) as? SelectVerbTableViewCell else {
            return UITableViewCell()
        }
        
        let verb = dataSource.verbs[indexPath.row]
        cell.configure(with: verb, isSelected: isSelected(verb: verb))
        
        return cell
    }
}

extension SelectVerbsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let verb = dataSource.verbs[indexPath.row]
        if isSelected(verb: verb) {
            dataSource.selectedVerbs.removeAll(where: { $0.infinitive == verb.infinitive })
        } else {
            dataSource.selectedVerbs.append(verb)
        }
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
