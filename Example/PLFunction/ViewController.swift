//
//  ViewController.swift
//  PLFunction
//
//  Created by PengLeiGit on 08/31/2019.
//  Copyright (c) 2019 PengLeiGit. All rights reserved.
//

import UIKit
import PLFunction

class ViewController: UIViewController {
    
    lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("跳转带参数", for: .normal)
        button.backgroundColor = UIColor.red
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        return button
    }()
    
    lazy var noParamsBtn: UIButton = {
        let button = UIButton()
        button.setTitle("跳转无参数", for: .normal)
        button.backgroundColor = UIColor.green
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(noParamsBtnClick), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(nextButton)
        view.addSubview(noParamsBtn)
        nextButton.frame = CGRect.init(x: 100, y: 100, width: 100, height: 50)
        noParamsBtn.frame = CGRect.init(x: 100, y: 200, width: 100, height: 50)
    }
    
    
}


extension ViewController {
    @objc func buttonClick() {
        let params: [String: Any] = ["name": "PL", "age": 18]
        let vc = PLRoute.shared.ListController(params)
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func noParamsBtnClick() {
        let vc = PLRoute.shared.ListNoParamsViewController()
        //        self.present(vc, animated: true, completion: nil)
        self.pl_Jump(to: vc)
    }
}


