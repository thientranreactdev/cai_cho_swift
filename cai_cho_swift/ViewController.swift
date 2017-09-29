//
//  ViewController.swift
//  cai_cho_swift
//
//  Created by Thien Tran on 9/27/17.
//  Copyright © 2017 Thien Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var containerView : UIView!
    var firstLabel : UILabel!
    var secondLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        centerView()
    }
    
    func centerView() {
        let secondView = UIView()
        secondView.backgroundColor = UIColor.blue
        secondView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(secondView)
        
        let centerHorizontally = NSLayoutConstraint(item: secondView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let centerVertically = NSLayoutConstraint(item: secondView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0)
        
        let height = NSLayoutConstraint(item: secondView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
                let width = NSLayoutConstraint(item: secondView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        NSLayoutConstraint.activate([centerVertically, centerHorizontally,width, height])
        
        NSLayoutConstraint(item: secondView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 150).isActive = false
    }
    
    func firstSimpleView() {
        let firstView: UIView = UIView()
        firstView.backgroundColor = UIColor.red
        firstView.translatesAutoresizingMaskIntoConstraints  = false
        
        self.view.addSubview(firstView)
        
        let leading = NSLayoutConstraint(item: firstView, attribute: .leading, relatedBy:.equal , toItem: self.view, attribute: .leading, multiplier: 1, constant: 50)
        let trailing = NSLayoutConstraint(item: firstView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -50)
        let top = NSLayoutConstraint(item: firstView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100)
        let height = NSLayoutConstraint(item: firstView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 120)
        
        NSLayoutConstraint.activate([leading,trailing,height,top])
        
    }
    
    
    
}

