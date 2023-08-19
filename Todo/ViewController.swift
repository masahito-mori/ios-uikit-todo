//
//  ViewController.swift
//  Todo
//
//  Created by 森匡人 on 2023/08/19.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // Tableで使用する配列を設定する
    private let myItems:[String] = ["Todo1", "Todo2", "Todo3"]
    private var myTableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        myTableView = UITableView()
        
        // Cell名の登録をおこなう.
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        // DataSourceの設定をする.
        myTableView.dataSource = self
        
        // Delegateを設定する.
        myTableView.delegate = self
        
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        
        // Viewに追加する.
        self.view.addSubview(myTableView)
        
        setupLayout()
    }
    
    private func setupLayout() {
        myTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    // 行が選択されていることをdelegateに伝える
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row:\(indexPath.section)")
        print("Section: \(indexPath.row)")
        print("Value: \(myItems[indexPath.row])")
    }
    
    // 指定された場所の行に使用する高さをデリゲートに尋ねる
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    // セルの行数を返す
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count
    }
    
    // セルの表示設定を行う
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Fetch a cell of the appropriate type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        // Configure the cell’s contents.
        cell.textLabel!.text = myItems[indexPath.row]
            
        return cell
    }
}
