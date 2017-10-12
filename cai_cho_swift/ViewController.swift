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
    
       // view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        setupLayout()
    }
    
    let bearImageView : UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView : UITextView = {
        let textView = UITextView()
        let attributeText = NSMutableAttributedString(string: "Join us today in our fun and games!", attributes: [NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)])
        attributeText.append(NSMutableAttributedString(string:"\n\n\nAre you ready for loads and loads of fun? Don't wait any longer! we hope to see you in our store soon.", attributes:[NSAttributedStringKey.font: UIFont.systemFont(ofSize: 14),NSAttributedStringKey.foregroundColor: UIColor.gray]))
        textView.attributedText = attributeText
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    private func setupLayout(){
        let topImageContainerView = UIView()
        view.addSubview(topImageContainerView)
        topImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        topImageContainerView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        topImageContainerView.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        topImageContainerView.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true
        //        topImageContainerView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        //        topImageContainerView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        topImageContainerView.addSubview(bearImageView)
        bearImageView.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        bearImageView.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        bearImageView.heightAnchor.constraint(equalTo: topImageContainerView.heightAnchor, multiplier:0.5).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant:25).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant:-25).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

