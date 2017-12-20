//
//  ViewController.swift
//  animateController
//
//  Created by apple on 2017/12/20.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var UIView1: UIView!
    var UIView2: UIView!
    var UIView3: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.green
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        UIView1 = UIView.init(frame: CGRect(x: 55, y: 350, width: 50, height: 0))
        UIView1.backgroundColor = UIColor.yellow
        self.view.addSubview(UIView1)
        
        UIView2 = UIView.init(frame: CGRect(x: 155, y: 350, width: 50, height: 0))
        UIView2.backgroundColor = UIColor.red
        self.view.addSubview(UIView2)
        
        UIView3 = UIView.init(frame: CGRect(x: 255, y: 350, width: 50, height: 0))
        UIView3.backgroundColor = UIColor.blue
        self.view.addSubview(UIView3)
        
        let Btn = UIButton(type: .roundedRect)
        Btn.frame = CGRect(x: 0, y: 400, width: 100, height: 40)
        Btn.setTitle("开始动画", for: .normal)
        Btn.setTitleColor(UIColor.white, for: .normal)
        Btn.backgroundColor = UIColor.init(red: 226/255.0, green: 87/255.0, blue: 72/255.0, alpha: 1)
        Btn.center.x = self.view.center.x
        self.view.addSubview(Btn)
        Btn.addTarget(self, action: #selector(animateAction), for: .touchUpInside)
        
        
    }
    @objc func animateAction() {
        self.UIView1.frame.size.height = 0
        self.UIView2.frame.size.height = 0
        self.UIView3.frame.size.height = 0
        self.UIView1.frame.origin.y = 350
        self.UIView2.frame.origin.y = 350
        self.UIView3.frame.origin.y = 350
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 5, options: .allowAnimatedContent, animations: {
            self.UIView1.frame.size.height = 150
            self.UIView1.frame.origin.y = 200
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.6, initialSpringVelocity: 5, options: .allowAnimatedContent, animations: {
            self.UIView2.frame.size.height = 150
            self.UIView2.frame.origin.y = 200
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.8, initialSpringVelocity: 5, options: .allowAnimatedContent, animations: {
            self.UIView3.frame.size.height = 150
            self.UIView3.frame.origin.y = 200
        }, completion: nil)
    }

}

