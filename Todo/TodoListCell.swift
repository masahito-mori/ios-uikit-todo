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
    
    private let titleLabel = UILabel()
    private let deadlineLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titleLabel.font = .systemFont(ofSize: 20)
        titleLabel.textColor = .black
        contentView.addSubview(titleLabel)
        
        deadlineLabel.font = .systemFont(ofSize: 12)
        deadlineLabel.textColor = .black
        contentView.addSubview(deadlineLabel)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setDetail(title: String, deadline: String) {
        titleLabel.text = title
        deadlineLabel.text = deadline
    }
    
    private func setUpView() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            titleLabel.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        deadlineLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            deadlineLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            deadlineLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            deadlineLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            deadlineLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }
}
