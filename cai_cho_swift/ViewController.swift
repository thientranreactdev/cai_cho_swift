//
//  ViewController.swift
//  cai_cho_swift
//
//  Created by Thien Tran on 9/27/17.
//  Copyright © 2017 Thien Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        view.addSubview(fourthButton)
        
        setupConstraint()
    }
    
    let firstButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Hello World", for: .normal)
        return button
    }()
    let secondButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("🇻🇳", for: .normal)
        return button
    }()
    let thirdButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("😍", for: .normal)
        return button
    }()
    let fourthButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("🎩", for: .normal)
        return button
    }()
    
    func setupConstraint() {
        firstButton.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        firstButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        firstButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

