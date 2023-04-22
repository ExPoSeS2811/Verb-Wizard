//
//  HomeViewController.swift
//  VerbWizard
//
//  Created by MacBook Pro 13 2019 on 4/17/23.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - GUI Variables
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Verb Wizard"
        label.font = .boldSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false

        
        return label
    }()
    
    private lazy var firstButton: UIButton = {
        let button = UIButton()
        
        settingButton(text: "Select Verbs", for: button)
        button.addTarget(self, action: #selector(goToSelectViewController), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        
        settingButton(text: "Train Verbs", for: button)
        button.addTarget(self, action: #selector(goToTrainViewController), for: .touchUpInside)

        
        return button
    }()
    // MARK: - Properties
    private let cornerRadius: CGFloat = 20
    private let buttonHeight: CGFloat = 80
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    // MARK: - Private methods
    @objc
    private func goToSelectViewController() {
        navigationController?.pushViewController(SelectVerbsViewController(), animated: true)
    }
    
    @objc
    private func goToTrainViewController() {
        navigationController?.pushViewController(TrainViewController(), animated: true)

    }
    
    private func configureUI() {
        view.addSubview(titleLabel)
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        
        view.backgroundColor = .cyan
        
        setupConstaints()
    }
    
    private func setupConstaints() {
        firstButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        firstButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80).isActive = true
        
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: firstButton.topAnchor, constant: -80).isActive = true
        
        secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 40).isActive = true
        secondButton.heightAnchor.constraint(equalToConstant: buttonHeight).isActive = true
        secondButton.widthAnchor.constraint(equalTo: firstButton.widthAnchor).isActive = true
        
    }
    
    private func settingButton(text: String, for button: UIButton) {
        button.setTitle(text.localized, for: .normal)
        button.setTitleColor(UIColor.darkText, for: .normal)
        button.backgroundColor = .systemGray5
        button.layer.cornerRadius = cornerRadius
        button.translatesAutoresizingMaskIntoConstraints = false
    }
}

