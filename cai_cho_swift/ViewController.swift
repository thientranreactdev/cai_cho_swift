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
        let image = UIImageView(image: #imageLiteral(resourceName: "user1"))
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
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
        let headerContainer = UIStackView()
        headerContainer.addArrangedSubview(headerTitle)
        headerContainer.translatesAutoresizingMaskIntoConstraints = false
        headerContainer.distribution = .equalCentering
        
        view.addSubview(headerContainer)
        
        let margin = view.layoutMarginsGuide
        headerContainer.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        headerContainer.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        headerContainer.topAnchor.constraint(equalTo: margin.topAnchor, constant: 20).isActive = true
        headerContainer.heightAnchor.constraint(equalTo: view.heightAnchor, constant :20).isActive = true
        
        let bodyContainer = UIStackView(arrangedSubviews: [user1Image, user2Image, user3Image])
        bodyContainer.translatesAutoresizingMaskIntoConstraints = false
        bodyContainer.distribution = .equalCentering
        
        view.addSubview(bodyContainer)
        
        bodyContainer.leadingAnchor.constraint(equalTo: margin.leadingAnchor).isActive = true
        bodyContainer.trailingAnchor.constraint(equalTo: margin.trailingAnchor).isActive = true
        bodyContainer.topAnchor.constraint(equalTo: headerContainer.bottomAnchor, constant: 20).isActive = true
        bodyContainer.heightAnchor.constraint(equalTo: view.heightAnchor, constant :200).isActive = true
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

