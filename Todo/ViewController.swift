//
//  ViewController.swift
//  Todo
//
//  Created by 森匡人 on 2023/08/19.
//

import UIKit

class ViewController: UIViewController {
    
    private let nameLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = "Todo"
        nameLabel.sizeToFit()
        nameLabel.frame.origin.y = 50
        nameLabel.frame.origin.x = 50
        
        view.addSubview(nameLabel)
    }


}

