//
//  SafetyPlanView.swift
//  Safety Plan
//
//  Created by Armand Raynor on 11/8/20.
//  Copyright © 2020 MoodTools. All rights reserved.
//

import UIKit

class SafetyPlanView: UIView {
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            tableView.centerYAnchor.constraint(equalTo: centerYAnchor),
            tableView.widthAnchor.constraint(equalTo: widthAnchor),
            tableView.heightAnchor.constraint(equalTo: heightAnchor)
        ])

        tableView.register(SafetyPlanTableViewCell.self, forCellReuseIdentifier: SafetyPlanTableViewCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
