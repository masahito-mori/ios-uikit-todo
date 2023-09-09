//
//  TodoListAdapter.swift
//  Todo
//
//  Created by 森匡人 on 2023/09/09.
//

import UIKit

final class TodoListAdapter: NSObject {
    // Tableで使用する配列を設定する
    private let myItems:[String] = ["Todo1", "Todo2", "Todo3"]
}

extension TodoListAdapter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // deque
        let reusableCell = tableView.dequeueReusableCell(withIdentifier: TodoListCell.cellIdentifier) as? TodoListCell
        // セルの生成
        let cell = reusableCell ?? TodoListCell(style: .default, reuseIdentifier: TodoListCell.cellIdentifier)
        
        cell.setDetail(name: myItems[indexPath.row])

        return cell
    }
}

extension TodoListAdapter: UITableViewDelegate {
    // 指定された場所の行に使用する高さをデリゲートに尋ねる
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    // 行が選択されていることをdelegateに伝える
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row:\(indexPath.section)")
        print("Section: \(indexPath.row)")
        print("Value: \(myItems[indexPath.row])")
    }
}
