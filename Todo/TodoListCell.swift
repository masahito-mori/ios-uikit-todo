//
//  TodoListCell.swift
//  Todo
//
//  Created by 森匡人 on 2023/09/09.
//

import UIKit

final class TodoListCell: UITableViewCell {
    // セルID
    static let cellIdentifier = "todoListCell"
    
    private let nameLabel = UILabel()
    private let infoLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        nameLabel.font = .systemFont(ofSize: 20)
        nameLabel.textColor = .black
        contentView.addSubview(nameLabel)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setDetail(name: String) {
        nameLabel.text = name
    }
    
    private func setUpView() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
