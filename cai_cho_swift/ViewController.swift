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
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        button.backgroundColor = .orange
        let sayHello = #selector(sayHelloWorld(_ :))
        button.addTarget(self, action: sayHello, for: .touchUpInside)
        return button
    }()
    let secondButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("🇻🇳", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 70)
        button.backgroundColor = .white
        let sayHello = #selector(sayHelloWorld(_ :))
        button.addTarget(self, action: sayHello, for: .touchUpInside)
        return button
    }()
    let thirdButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("😍", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 70)
        button.backgroundColor = .orange
        let sayHello = #selector(sayHelloWorld(_ :))
        button.addTarget(self, action: sayHello, for: .touchUpInside)
        return button
    }()
    let fourthButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("🎩", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 70)
        button.backgroundColor = .white
        let sayHello = #selector(sayHelloWorld(_ :))
        button.addTarget(self, action: sayHello, for: .touchUpInside)
        return button
    }()
    
    func setupConstraint() {
        let margin = view.layoutMarginsGuide
        view.backgroundColor = UIColor.init(red: 223/255, green: 226/255, blue: 225/255, alpha: 1.0)
        
        firstButton.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        firstButton.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        firstButton.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant:10).isActive = true
        firstButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.20).isActive = true
        
        secondButton.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        secondButton.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant:10).isActive = true
        secondButton.heightAnchor.constraint(equalTo: firstButton.heightAnchor).isActive = true
        
        thirdButton.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        thirdButton.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant:10).isActive = true
        thirdButton.heightAnchor.constraint(equalTo: firstButton.heightAnchor).isActive = true
        
        fourthButton.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        fourthButton.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        fourthButton.topAnchor.constraint(equalTo: thirdButton.bottomAnchor, constant:10).isActive = true
        fourthButton.heightAnchor.constraint(equalTo:firstButton.heightAnchor).isActive = true
    }

    @objc func sayHelloWorld(_ sender: UIButton){
        print("SAY HELLO WORLD")
        let alertController = UIAlertController(title: "Welcome to first app", message: "Hello World", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

