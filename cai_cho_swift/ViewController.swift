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
        
        setupView()
    }
    
    let headerTitle :  UITextView = {
        let textView = UITextView()
        
        let attributeText = NSMutableAttributedString(string:"Instant Developer" , attributes: [
           NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 30),
           NSAttributedStringKey.foregroundColor : UIColor.orange])
        
        attributeText.append(NSMutableAttributedString(string: "\nGet help from experts in 15 minutes", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 20)]))
        
        textView.attributedText = attributeText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let user1Image : UIImageView = {
        let user1 = UIImage(named: "user1")
        let image = UIImageView(image: #imageLiteral(resourceName: "user1"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = user1
        return image
    }()
    
    let user2Image : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "user2"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let user3Image : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "user3"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    func setupView() {
        
        let mainContainerStackView = UIStackView()
        mainContainerStackView.translatesAutoresizingMaskIntoConstraints = false
        mainContainerStackView.distribution = .fillEqually
        
        view.addSubview(mainContainerStackView)
        
        let margin = view.layoutMarginsGuide
        mainContainerStackView.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        mainContainerStackView.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        mainContainerStackView.topAnchor.constraint(equalTo: margin.topAnchor, constant: 10).isActive = true
        mainContainerStackView.bottomAnchor.constraint(equalTo: margin.bottomAnchor, constant: 10).isActive = true
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        yellowView.heightAnchor.constraint(equalToConstant: 20)
        yellowView.widthAnchor.constraint(equalToConstant: view.frame.width)
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        
        let headerContainer = UIStackView()
        headerContainer.addArrangedSubview(yellowView)
        headerContainer.translatesAutoresizingMaskIntoConstraints = false
        headerContainer.distribution = .fill
        
         mainContainerStackView.addSubview(headerContainer)
        
        headerContainer.leadingAnchor.constraint(equalTo: mainContainerStackView.leadingAnchor).isActive = true
        headerContainer.trailingAnchor.constraint(equalTo: mainContainerStackView.trailingAnchor).isActive = true
        headerContainer.heightAnchor.constraint(equalTo: mainContainerStackView.heightAnchor, multiplier: 0.5).isActive = true
        headerContainer.topAnchor.constraint(equalTo: mainContainerStackView.topAnchor).isActive = true
        
        let redView = UIView()
        redView.backgroundColor = .red
        redView.heightAnchor.constraint(equalToConstant: 100)
        redView.widthAnchor.constraint(equalToConstant: view.frame.width)
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        let bodyContainer = UIStackView()
        
        bodyContainer.addArrangedSubview(redView)
        bodyContainer.translatesAutoresizingMaskIntoConstraints = false
        bodyContainer.distribution = .fill
        
        mainContainerStackView.addSubview(bodyContainer)
        bodyContainer.leadingAnchor.constraint(equalTo: mainContainerStackView.leadingAnchor).isActive = true
        bodyContainer.trailingAnchor.constraint(equalTo: mainContainerStackView.trailingAnchor).isActive = true
        bodyContainer.heightAnchor.constraint(equalTo: mainContainerStackView.heightAnchor, multiplier: 0.5).isActive = true
        bodyContainer.bottomAnchor.constraint(equalTo: mainContainerStackView.bottomAnchor).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

