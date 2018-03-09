//
//  ViewController.swift
//  ButtonDemo
//
//  Created by gdcp on 2018/3/9.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1、创建控件的实例
        let button = UIButton(type: .system)
        
        //2、设置实例的属性
        button.frame = CGRect(x: 100, y: 100, width: 120, height: 30)
        button.setTitle("点我一下", for: .normal)  //标题文本
        button.setTitleColor(UIColor.red, for: .normal)
        button.backgroundColor = UIColor.gray
        
        //创建图片实例
        let image = UIImage(named: "drink")
        button.setImage(image, for: .normal)   //内容图片
        button.setBackgroundImage(image, for: .normal)  //背景图片
        
        //让视图控制器类监听按钮与用户的交互
        /*
             target:监听事件触发的对象，一般是当前的视图控制器实例，即self
             action:当事件触发后，要执行的动作方法
             for: 触发的事件类型
        */
        //由视图控制器监听按钮控件，当按钮的touchuUpInside事件触发的时候，调用本类ViewController中的ButtonDidClick方法进行处理
        button.addTarget(self, action: #selector(ButtonDidClick), for: .touchUpInside)
        //button.addTarget(self, action: #selector(ViewController.ButtonDidClick), for: UIControlEvents.touchUpInside)
        
        //3、添加到父视图中
        self.view.addSubview(button)
    }
    
    //事件处理方法
    func ButtonDidClick(){
        self.view.backgroundColor = UIColor(red: CGFloat(arc4random() % 256) / 255, green: CGFloat(arc4random() % 256) / 255, blue: CGFloat(arc4random() % 256) / 255, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

