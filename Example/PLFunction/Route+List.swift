//
//  Route+List.swift
//  XKRouterDemo
//
//  Created by 彭磊 on 2019/8/22.
//  Copyright © 2019 彭磊. All rights reserved.
//

import Foundation
import PLFunction

fileprivate let target_List = "List"
fileprivate let target_ListNoParams = "ListNoParams"

extension PLRoute {
    // 跳转到有参数的页面
    public func ListController(_ params: [String: Any]) -> UIViewController {
        let vc = perform(target_List, params: params, shouldCacheTarget: false)
        guard vc != nil else {
            return errorController()
        }
        if let vc1 = vc as? ListController {
            return vc1
        }else {
            return errorController()
        }
    }
}

class Target_List: NSObject, RouteTargetProtocol {
    @objc func Action_ViewController(_ params: [String : Any]) -> UIViewController? {
        let vc = ListController(params)
        return vc
    }
}


extension PLRoute {
    // 跳转到无参数的页面、
    public func ListNoParamsViewController() -> UIViewController {
        let vc = perform(target_ListNoParams, params: nil, shouldCacheTarget: false)
        guard vc != nil else {
            return errorController()
        }
        if let vc1 = vc as? ListNoParamsViewController {
            return vc1
        }else {
            return errorController()
        }
    }
}

class Target_ListNoParams: NSObject, RouteTargetProtocol {
    @objc func Action_ViewController(_ params: [String : Any]) -> UIViewController? {
        let vc = ListNoParamsViewController()
        return vc
    }
}
