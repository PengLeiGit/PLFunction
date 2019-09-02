//
//  PLBaseViewController.swift
//  PLFunction
//
//  Created by 彭磊 on 2019/8/31.
//

import UIKit
/**
 所有视图控制器的父类
 */
open class PLBaseViewController: UIViewController {

    /**
     * 是否隐藏导航栏上的那条黑线
     */
    public var isHiddenNavigationBarLine = false {
        didSet{
            navBarHairLine = plFindLineImageView(under: navigationController?.navigationBar)
        }
    }
    private var navBarHairLine : UIImageView?
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navBarHairLine?.isHidden = true
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navBarHairLine?.isHidden = false
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
    }
}



extension PLBaseViewController {
    /**
     * 寻找导航栏下面的黑色细线
     */
    public func plFindLineImageView(under view : UIView?) -> UIImageView? {
        
        if view == nil { return nil }
        if view!.isKind(of: UIImageView.classForCoder()) && view!.bounds.size.height <= 1 {
            return view as? UIImageView
        }
        for subView in view!.subviews {
            let imageView : UIImageView? = plFindLineImageView(under: subView)
            if imageView != nil {
                return imageView!
            }
        }
        return nil
    }

}
