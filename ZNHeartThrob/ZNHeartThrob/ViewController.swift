//
//  ViewController.swift
//  ZNHeartThrob
//
//  Created by 赵恩峰 on 16/8/27.
//  Copyright © 2016年 赵恩峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageV = UIImageView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageV = UIImageView(image: UIImage(named: "心"))
        
        imageV.center = view.center
        view.addSubview(imageV)
        
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //1.创建动画对象
        let anim = CABasicAnimation()
        
        //2.设置动画属性
        anim.keyPath = "transform.scale";
        anim.toValue = 0;
        
        //设置动画执行的次数
        anim.repeatCount = MAXFLOAT;
        //设置动画的执行时间
        anim.duration = 0.25;
        
        //自动反转(怎么去怎么回)
        anim.autoreverses = true;
        
        imageV.layer.addAnimation(anim, forKey: nil)

    }
    

   

}

