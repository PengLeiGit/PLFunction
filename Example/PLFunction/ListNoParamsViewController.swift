//
//  ListNoParamsViewController.swift
//  XKRouterDemo
//
//  Created by 彭磊 on 2019/8/22.
//  Copyright © 2019 彭磊. All rights reserved.
//

import UIKit

class ListNoParamsViewController: UIViewController {
    lazy var backBtn: UIButton = {
        let button = UIButton()
        button.setTitleColor(UIColor.white, for: .normal)
        button.setTitle("返回", for: .normal)
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(backBtnClick), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.yellow
        view.addSubview(backBtn)
        backBtn.frame = CGRect.init(x: 20, y: 80, width: 40, height: 40)
    }
}

extension ListNoParamsViewController {
    @objc func backBtnClick() {
        self.dismiss(animated: true, completion: nil)
    }
}
