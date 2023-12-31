//
//  TodoListAdapter.swift
//  Todo
//
//  Created by 森匡人 on 2023/09/09.
//

import UIKit

final class TodoListAdapter: NSObject {
    // Tableで使用する配列を設定する
    private let todos = [["title": "swift","deadline": "12/03"],
                         ["title": "objc" ,"deadline": "07/10"],
                         ["title": "UIkit","deadline": "05/28"]]
}

extension TodoListAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // deque
        let reusableCell = tableView.dequeueReusableCell(withIdentifier: TodoListCell.cellIdentifier) as? TodoListCell
        // セルの生成
        let cell = reusableCell ?? TodoListCell(style: .default, reuseIdentifier: TodoListCell.cellIdentifier)
        
        let todo = todos[indexPath.row]
        
        if let title = todo["title"], let deadline = todo["deadline"] {
            cell.setDetail(title: title, deadline: deadline)
        }
        
        return cell
    }
}

extension TodoListAdapter: UITableViewDelegate {
    // 指定された場所の行に使用する高さをデリゲートに尋ねる
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    // 行が選択されていることをdelegateに伝える
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row:\(indexPath.section)")
        print("Section: \(indexPath.row)")
    }
}
