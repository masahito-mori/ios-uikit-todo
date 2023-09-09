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
        backgroundColor = .red
        nameLabel.font = .systemFont(ofSize: 30)
        nameLabel.textColor = .black
        self.addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        nameLabel.sizeToFit()
    }
    
    func setDetail(name: String) {
        nameLabel.text = name
    }
}
