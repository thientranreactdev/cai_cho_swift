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
    var containerWrapper : UIView!
    var containerChild : UIView!
    var firstLabel : UILabel!
    var secondLabel : UILabel!
    var firstButton : UIButton!
    var secondButton : UIButton!
    
    
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
        
        viewWithMoreViewInside()
    }
    
    func viewWithMoreViewInside(){
        containerView = UIView()
        containerView.backgroundColor = UIColor.blue
        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(containerView)
        
        NSLayoutConstraint(item: containerView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: containerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 250).isActive = true
        NSLayoutConstraint(item: containerView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: containerView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: -10).isActive = true
        
        containerWrapper = UIView()
        containerWrapper.backgroundColor = UIColor.orange
        containerWrapper.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(containerWrapper)

        NSLayoutConstraint(item: containerWrapper, attribute: .centerX, relatedBy: .equal, toItem: containerView, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: containerWrapper, attribute: .centerY, relatedBy: .equal, toItem: containerView, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: containerWrapper, attribute: .top, relatedBy: .equal, toItem: containerView, attribute: .top, multiplier: 1, constant: 20).isActive = true
        NSLayoutConstraint(item: containerWrapper, attribute: .bottom, relatedBy: .equal, toItem: containerView, attribute: .bottom, multiplier: 1, constant: -20).isActive = true
        NSLayoutConstraint(item: containerWrapper, attribute: .leading, relatedBy: .equal, toItem: containerView, attribute: .leading, multiplier: 1, constant: 20).isActive = true
        NSLayoutConstraint(item: containerWrapper, attribute: .trailing, relatedBy: .equal, toItem: containerView, attribute: .trailing, multiplier: 1, constant: -20).isActive = true
        
        firstLabel = UILabel()
        firstLabel.backgroundColor = UIColor.brown
        firstLabel.text = "L1";
        firstLabel.textColor = UIColor.white
        firstLabel.textAlignment = .center
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        containerWrapper.addSubview(firstLabel)
    
        NSLayoutConstraint(item: firstLabel, attribute: .top, relatedBy: .equal, toItem: containerWrapper, attribute: .top, multiplier: 1, constant: 10).isActive = false
        NSLayoutConstraint(item: firstLabel, attribute: .bottom, relatedBy: .equal, toItem: containerWrapper, attribute: .bottom, multiplier: 1, constant: 10).isActive = false
        
        let leading = NSLayoutConstraint(item: firstLabel, attribute: .leading, relatedBy: .equal, toItem: containerWrapper, attribute: .leading, multiplier: 1.0, constant: 20.0)
        let top1 = NSLayoutConstraint(item: firstLabel, attribute: .top, relatedBy: .equal, toItem: containerWrapper, attribute: .top, multiplier: 1.0, constant: 20.0)
        let width1 = NSLayoutConstraint(item: firstLabel, attribute: .width, relatedBy: .equal, toItem: firstButton, attribute: .width, multiplier: 1.0, constant: 0)
        let height1 = NSLayoutConstraint(item: firstLabel, attribute: .height, relatedBy: .equal, toItem: firstLabel, attribute: .width, multiplier: 1.2, constant: 0)
        
        containerView.addConstraint(leading)
        containerView.addConstraint(top1)
        self.view.addConstraint(width1)
        containerWrapper.addConstraint(height1)
        
    }
    
    func complexView() {
        containerView = UIView()
        containerView.backgroundColor = UIColor.blue
        containerView.translatesAutoresizingMaskIntoConstraints = false;
        
        self.view.addSubview(containerView);
        
        let centerHorizontally =   NSLayoutConstraint(item: containerView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let centerVertically = NSLayoutConstraint(item: containerView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0)
        let height = NSLayoutConstraint(item: containerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 150)
        let width = NSLayoutConstraint(item: containerView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200)
        self.view.addConstraints([centerHorizontally, centerVertically, height, width])
        
        firstButton = UIButton(type: .custom)
        firstButton.backgroundColor = UIColor.orange
        firstButton.setTitle("@x1", for: .normal)
        firstButton.setTitleColor(.white, for: .normal)
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(firstButton)
        
        let centerHorizontallyOfFistButton =  NSLayoutConstraint(item: firstButton, attribute: .centerX, relatedBy: .equal, toItem: containerView, attribute: .centerX, multiplier: 1, constant: 0)
        let centerVerticallyOfFirstButton = NSLayoutConstraint(item: firstButton, attribute: .centerY, relatedBy: .equal, toItem: containerView, attribute: .centerY, multiplier: 1, constant: 1)
        let topOfFirstButton = NSLayoutConstraint(item: firstButton, attribute: .top, relatedBy: .equal, toItem: containerView, attribute: .top, multiplier: 1, constant: 10)
        let widthOfFirstButton = NSLayoutConstraint(item: firstButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        let heightOfFirstButton = NSLayoutConstraint(item: firstButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30)
        containerView.addConstraints([centerHorizontallyOfFistButton,topOfFirstButton,widthOfFirstButton, heightOfFirstButton])
        
        secondButton = UIButton(type: .custom)
        secondButton.backgroundColor = UIColor.red
        secondButton.setTitle("@x2", for: .normal)
        secondButton.setTitleColor(.white, for: .normal)
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        containerView.addSubview(secondButton)
        
        NSLayoutConstraint(item: secondButton, attribute: .centerX, relatedBy: .equal, toItem: firstButton, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: secondButton, attribute: .top, relatedBy: .equal, toItem: firstButton, attribute: .bottom, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: secondButton, attribute: .width, relatedBy: .equal, toItem: firstButton, attribute: .width, multiplier: 2, constant: 0).isActive = true
        NSLayoutConstraint(item: secondButton, attribute: .height, relatedBy: .equal, toItem: firstButton, attribute: .height, multiplier: 1, constant: 0).isActive = true
        
        
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

