//
//  ViewController.swift
//  Todo
//
//  Created by 森匡人 on 2023/08/19.
//

import UIKit

final class ViewController: UIViewController {
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
        view.backgroundColor = .white
        
        setupLayout()
    }
}

// MARK: - private
private extension ViewController {
    func setupLayout() {
        myTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
}
