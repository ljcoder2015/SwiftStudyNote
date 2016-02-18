//
//  ViewController.swift
//  Swift-UILabel
//
//  Created by fox on 16/2/17.
//  Copyright © 2016年 ljcoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        1. 创建label
//        //创建时设置frame
//        let label = UILabel(frame: CGRectMake(10, 100, 300, 30))
//        //添加到self.view上才会显示出来
//        self.view.addSubview(label)
        
        //先创建，后设置frame
        let label = UILabel()
        label.frame = CGRectMake(10, 100, 300, 30)
        self.view.addSubview(label)
        
//        2. UILabel的常用属性
        //设置背景色
        label.backgroundColor = UIColor.greenColor()
        
        //设置字体颜色
        label.textColor = UIColor.redColor()
        
        //设置字体大小
        label.font = UIFont.systemFontOfSize(14)
        
        //设置文本对齐方式，默认左对齐
        label.textAlignment = NSTextAlignment.Right
        
        //设置要显示的文本
        label.text = "I am a label"
        
        //打印label的文本,因为label.text为String？，所以要加！
        let labelString = label.text!
        print(labelString)
        
//        3. 显示多行行文本
        //显示固定行数的文本
        label.frame = CGRectMake(10, 100, 100, 100)
        label.numberOfLines = 2;
        label.text = "I am a label,I am a label,I am a label"
        
        //根据文字长度自己确定显示几行,只需设置numberOfLines = 0
        label.numberOfLines = 0;
        label.text = "I am a label,I am a label,I am a label"

//        4. 显示富文本
        //创建富文本
        let attrString = NSMutableAttributedString(string: "I am a attributed string")
        //设置字体大小
        attrString.addAttribute(NSFontAttributeName, value: UIFont.systemFontOfSize(18), range: NSMakeRange(0, 1))
        //设置字体颜色
        attrString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blackColor(), range: NSMakeRange(2, 2))
        //设置下划线
        attrString.addAttribute(NSUnderlineStyleAttributeName, value:NSUnderlineStyle.StyleSingle.rawValue, range: NSMakeRange(5,12))
        label.attributedText = attrString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

