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
    
    var usingDamping1: UITextField!
    var usingDamping2: UITextField!
    var usingDamping3: UITextField!
    
    var initialVelocity1: UITextField!
    var initialVelocity2: UITextField!
    var initialVelocity3: UITextField!
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
        
        UIView1 = UIView.init(frame: CGRect(x: 95, y: 100, width: 50, height: 150))
        UIView1.backgroundColor = UIColor.yellow
        self.view.addSubview(UIView1)
        
        UIView2 = UIView.init(frame: CGRect(x: 185, y: 100, width: 50, height: 150))
        UIView2.backgroundColor = UIColor.red
        self.view.addSubview(UIView2)
        
        UIView3 = UIView.init(frame: CGRect(x: 275, y: 100, width: 50, height: 150))
        UIView3.backgroundColor = UIColor.blue
        self.view.addSubview(UIView3)
        
        
        let Btn = UIButton(type: .roundedRect)
        Btn.frame = CGRect(x: 0, y:50, width: 100, height: 40)
        Btn.setTitle("开始动画", for: .normal)
        Btn.setTitleColor(UIColor.white, for: .normal)
        Btn.backgroundColor = UIColor.init(red: 226/255.0, green: 87/255.0, blue: 72/255.0, alpha: 1)
        Btn.center.x = self.view.center.x
        self.view.addSubview(Btn)
        Btn.addTarget(self, action: #selector(animateAction), for: .touchUpInside)
        
        self.addCustomOption()
        
    }
    @objc func animateAction() {
        self.UIView1.frame.size.height = 0
        self.UIView2.frame.size.height = 0
        self.UIView3.frame.size.height = 0
        self.UIView1.frame.origin.y = 250
        self.UIView2.frame.origin.y = 250
        self.UIView3.frame.origin.y = 250
        
        
        let damping1 = Double(usingDamping1.text!) ?? 0.5
        let damping2 = Double(usingDamping2.text!) ?? 0.5
        let damping3 = Double(usingDamping3.text!) ?? 0.5
        
        let velocity1 = Double(initialVelocity1.text!) ?? 5
        let velocity2 = Double(initialVelocity2.text!) ?? 5
        let velocity3 = Double(initialVelocity3.text!) ?? 5
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: CGFloat(damping1), initialSpringVelocity: CGFloat(velocity1), options: .allowAnimatedContent, animations: {
            self.UIView1.frame.size.height = 150
            self.UIView1.frame.origin.y = 100
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: CGFloat(damping2), initialSpringVelocity: CGFloat(velocity2), options: .allowAnimatedContent, animations: {
            self.UIView2.frame.size.height = 150
            self.UIView2.frame.origin.y = 100
        }, completion: nil)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: CGFloat(damping3), initialSpringVelocity: CGFloat(velocity3), options: .allowAnimatedContent, animations: {
            self.UIView3.frame.size.height = 150
            self.UIView3.frame.origin.y = 100
        }, completion: nil)
    }
    func addCustomOption () {
        
        let label1 = UILabel(frame: CGRect(x: 0, y: 270, width: 100, height: 20))
        label1.text = "usingSpringWithDamping"
        self.view.addSubview(label1)
        
        let label2 = UILabel(frame: CGRect(x: 0, y: 320, width: 100, height: 20))
        label2.text = "initialSpringVelocity"
        self.view.addSubview(label2)
        
        
        usingDamping1 = UITextField(frame: CGRect(x: 95, y: 270, width: 50, height: 30))
        usingDamping1.text = "0.4"
        usingDamping1.textAlignment = .center
        usingDamping1.borderStyle = .roundedRect
        
        usingDamping2 = UITextField(frame: CGRect(x: 185, y: 270, width: 50, height: 30))
        usingDamping2.text = "0.6"
        usingDamping2.textAlignment = .center
        usingDamping2.borderStyle = .roundedRect
        
        usingDamping3 = UITextField(frame: CGRect(x: 275, y: 270, width: 50, height: 30))
        usingDamping3.text = "0.8"
        usingDamping3.textAlignment = .center
        usingDamping3.borderStyle = .roundedRect
        
        initialVelocity1 = UITextField(frame: CGRect(x: 95, y: 320, width: 50, height: 30))
        initialVelocity1.text = "5"
        initialVelocity1.textAlignment = .center
        initialVelocity1.borderStyle = .roundedRect
        
        initialVelocity2 = UITextField(frame: CGRect(x: 185, y: 320, width: 50, height: 30))
        initialVelocity2.text = "5"
        initialVelocity2.textAlignment = .center
        initialVelocity2.borderStyle = .roundedRect
        
        initialVelocity3 = UITextField(frame: CGRect(x: 275, y: 320, width: 50, height: 30))
        initialVelocity3.text = "5"
        initialVelocity3.textAlignment = .center
        initialVelocity3.borderStyle = .roundedRect
        
        self.view.addSubview(usingDamping1)
        self.view.addSubview(usingDamping2)
        self.view.addSubview(usingDamping3)
        self.view.addSubview(initialVelocity1)
        self.view.addSubview(initialVelocity2)
        self.view.addSubview(initialVelocity3)
        
    }

}

