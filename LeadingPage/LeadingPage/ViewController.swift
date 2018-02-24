//
//  ViewController.swift
//  LeadingPage
//
//  Created by Magic on 2018/2/23.
//  Copyright © 2018年 magic. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let label = UILabel()
        label.text = "欢迎进入"
        label.textAlignment = .center
        view.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(100)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().offset(-25)
            make.height.equalTo(50)
        }
    }
}

