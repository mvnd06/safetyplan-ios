//
//  SafetyPlanTableViewCell.swift
//  Safety Plan
//
//  Created by Armand Raynor on 11/8/20.
//  Copyright © 2020 MoodTools. All rights reserved.
//

import UIKit

extension CGFloat {
    fileprivate static let iconWidth : CGFloat = 50.0
    fileprivate static let iconHeight : CGFloat = 50.0
}

class SafetyPlanTableViewCell: UITableViewCell {

    // MARK: Properties

    public static let identifier = "safetyPlanTableViewCellIdentifier"

    var icon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        return stackView
    }()

    // MARK: Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Helper Methods

    private func configureViews() {
        addSubview(icon)
        NSLayoutConstraint.activate([
            icon.widthAnchor.constraint(equalToConstant: .iconWidth),
            icon.heightAnchor.constraint(equalToConstant: .iconHeight),
            icon.leftAnchor.constraint(equalTo: leftAnchor),
            icon.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])

        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subtitleLabel)
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leftAnchor.constraint(equalTo: icon.rightAnchor),
            stackView.rightAnchor.constraint(equalTo: rightAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
