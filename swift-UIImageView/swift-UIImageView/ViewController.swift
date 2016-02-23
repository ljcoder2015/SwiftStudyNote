//
//  ViewController.swift
//  swift-UIImageView
//
//  Created by fox on 16/2/22.
//  Copyright © 2016年 ljcoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1. 基本使用
        let imageView = UIImageView(frame: CGRectMake(100, 10, 200, 200))
        imageView.image = UIImage(named:"1.jpg")
        self.view.addSubview(imageView)
        
        //2. 用户交互
        imageView.userInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: Selector("tapAction:"))
        imageView.addGestureRecognizer(tap)
        
        //3. 图片拉伸
        //1) 图片整体拉伸
        self.view.backgroundColor = UIColor.redColor()
        imageView.backgroundColor = UIColor.greenColor()
        var frame = imageView.frame
        frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 300)
        imageView.frame = frame
        // 设置拉伸模式
        /*
        ScaleToFill: 填充模式，图片不会保持原来的比例
        ScaleAspectFit: 图片保持原来的比例，宽度填充，高度自适应
        ScaleAspectFill： 图片保持原来的比例，高度填充，宽度自适应
        */
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        
        //2) 部分拉伸
        let imageView2 = UIImageView(frame: CGRectMake(10, 320, 200, 94))
//        imageView2.image = UIImage(named: "qipao.png")
        imageView2.backgroundColor = UIColor.greenColor()
        self.view.addSubview(imageView2)
        
        // 设置拉伸
        // stretch：通过拉伸来填充
        imageView2.image = UIImage(named: "qipao.png")!.resizableImageWithCapInsets(UIEdgeInsetsMake(52, 40, 36, 64), resizingMode: UIImageResizingMode.Stretch)
        // tile：通过重复来填充
//        imageView2.image = UIImage(named: "qipao.png")!.resizableImageWithCapInsets(UIEdgeInsetsMake(52, 40, 36, 64), resizingMode: UIImageResizingMode.Tile)
        
        
        //4. 图片动画
        // 创建UIimage数组，数组每个元素为一帧
        let animationImages = NSMutableArray()
        for var i = 1; i <= 40; i++ {
            let image = UIImage(named: "v\(i).jpg")
            animationImages.addObject(image!)
        }
        let array = animationImages as Array as? [UIImage]
        // 设置animationImages
        imageView.animationImages = array
        // 设置动画时间
        imageView.animationDuration = 9
        // 设置动画循环次数，0为无限循环
        imageView.animationRepeatCount = 0
        // 开启动画
        imageView.startAnimating()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tapAction(tap :UITapGestureRecognizer) {
        let scale :CGFloat = 1.2
        var frame = tap.view!.frame
        frame = CGRectMake(frame.origin.x * scale, frame.origin.y * scale, frame.size.width * scale, frame.size.height * scale)
        tap.view!.frame = frame
    }


}

