//
//  ViewController.swift
//  cai_cho_swift
//
//  Created by Thien Tran on 9/27/17.
//  Copyright © 2017 Thien Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vwBlue:UIView!
    var vwRed:UIView!
    var vwGreen:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    let button : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        return button
        
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Doesn't do much"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setUpView(){
        let firstView = UIView()
        firstView.backgroundColor = .yellow
        firstView.translatesAutoresizingMaskIntoConstraints = false
        let secondView = UIView()
        secondView.backgroundColor = .red
        secondView.translatesAutoresizingMaskIntoConstraints = false
        let thirdView = UIView()
        thirdView.backgroundColor = .blue
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
        
        let first_view_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-5-[v1]-5-|", options: [], metrics: nil, views: ["v1":firstView])
        let second_view_constraint_H = NSLayoutConstraint.constraints(withVisualFormat:
            "H:|-5-[v2]-5-|", options: [], metrics: nil, views: ["v2":secondView])
        let first_and_second_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v1]-5-[v2(==v1)]-10-|", options: [], metrics: nil, views: ["v1":firstView,"v2":secondView])
        view.addConstraints(first_and_second_constraint_V)
        view.addConstraints(second_view_constraint_H)
        view.addConstraints(first_view_constraint_H)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

