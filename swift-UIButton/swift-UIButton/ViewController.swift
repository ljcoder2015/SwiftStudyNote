//
//  ViewController.swift
//  swift-UIButton
//
//  Created by fox on 16/2/24.
//  Copyright © 2016年 ljcoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var button :UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1. 创建button
        let button = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(10, 100, 100, 100)
        self.view.addSubview(button)
        
        //2. 设置样式
        button.backgroundColor = UIColor.greenColor()
        /* UIControlState：按钮状态
            Normal: 正常状态
            Highlighted: 高亮状态
            Disabled: 不可用状态
            Selected: 选中状态
        */
        // 设置正常状态下的标题
        button.setTitle("button", forState: UIControlState.Normal)
        // 设置标题颜色
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        // 设置图标
        button.setImage(UIImage(named: "Comment_hongxin_dianji"), forState: UIControlState.Normal)
        
        // 注意：tintColor在 UIButtonTypeCustom 时没有用，其它样式下影响image和title的颜色
//        button.tintColor = UIColor.orangeColor()
        
        //3. button的图标和标题处理
        //1) 居中显示
//        button.titleEdgeInsets = UIEdgeInsetsMake(0, -button.imageView!.intrinsicContentSize().width, 0, 0)
//        button.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -button.titleLabel!.intrinsicContentSize().width)
        
//        //2) 图标在上，标题在下居中显示，中间空10的距离
//        button.titleEdgeInsets = UIEdgeInsetsMake(0, -button.imageView!.intrinsicContentSize().width, -(button.imageView!.intrinsicContentSize().height+10.0/2.0), 0)
//        button.imageEdgeInsets = UIEdgeInsetsMake(-(button.titleLabel!.intrinsicContentSize().height+10.0/2.0), 0, 0, -button.titleLabel!.intrinsicContentSize().width)
//        
//        //3) 图标在右，标题在左
//        button.titleEdgeInsets = UIEdgeInsetsMake(0, -button.intrinsicContentSize().width-button.imageView!.intrinsicContentSize().width+button.titleLabel!.intrinsicContentSize().width, 0, 0)
//        button.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -button.intrinsicContentSize().width-button.titleLabel!.intrinsicContentSize().width+button.imageView!.intrinsicContentSize().width)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

