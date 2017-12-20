//
//  ViewController.swift
//  animateController
//
//  Created by apple on 2017/12/20.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        
        let UIView1: UIView = UIView.init(frame: CGRect(x: 55, y: 200, width: 50, height: 0))
        UIView1.backgroundColor = UIColor.yellow
        self.view.addSubview(UIView1)
        
        let UIView2: UIView = UIView.init(frame: CGRect(x: 155, y: 200, width: 50, height: 150))
        UIView2.backgroundColor = UIColor.red
        self.view.addSubview(UIView2)
        
        let UIView3: UIView = UIView.init(frame: CGRect(x: 255, y: 200, width: 50, height: 150))
        UIView3.backgroundColor = UIColor.blue
        self.view.addSubview(UIView3)
        
        UIView.animate(withDuration: 1, delay: 0.5, usingSpringWithDamping: 0.4, initialSpringVelocity: 5, options: .allowAnimatedContent, animations: {
            UIView1.frame.size.height = 150
        }, completion: nil)
    }

}

