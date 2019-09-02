//
//  ListController.swift
//  XKRouterDemo
//
//  Created by 彭磊 on 2019/8/22.
//  Copyright © 2019 彭磊. All rights reserved.
//

import UIKit

class ListController: UIViewController {
    private var name: String = ""
    private var age: Int = 0
    
    init(_ dict: [String : Any]) {
        super.init(nibName: nil, bundle: nil)
        name = dict["name"] as? String ?? ""
        age = dict["age"] as? Int ?? 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        view.addSubview(backBtn)
        backBtn.frame = CGRect.init(x: 20, y: 80, width: 40, height: 40)

        view.backgroundColor = UIColor.cyan
        print("name = \(name), age = \(age)")
    }
    

}

extension ListController {
    @objc func backBtnClick() {
        self.dismiss(animated: true, completion: nil)
    }
}
