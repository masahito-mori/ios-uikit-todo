//
//  ViewController.swift
//  Todo
//
//  Created by 森匡人 on 2023/08/19.
//

import UIKit

class ViewController: UIViewController {
    private var myTableView = UITableView()
    private var todoListAdapter = TodoListAdapter()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Cell名の登録をおこなう.
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        // DataSourceの設定をする.
        myTableView.dataSource = todoListAdapter
        
        // Delegateを設定する.
        myTableView.delegate = todoListAdapter
        
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        
        // Viewに追加する.
        view.addSubview(myTableView)
        
        setupLayout()
    }
}

// MARK: - private
private extension ViewController {
    func setupLayout() {
        myTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}
