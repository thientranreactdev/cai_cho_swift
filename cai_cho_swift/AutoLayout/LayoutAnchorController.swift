//
//  LayoutAnchorController.swift
//  cai_cho_swift
//
//  Created by Thien Tran on 10/7/17.
//  Copyright © 2017 Thien Tran. All rights reserved.
//

import UIKit

private let heartImage = UIImage(named: "Heart")
private let starImage = UIImage(named: "Star")

class LayoutAnchorController: UIViewController {
    
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        setUpView()
    }
    
    let heartTop: UIImageView = {
        let imageView = UIImageView(image: heartImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let starTop : UIImageView = {
        let imageView = UIImageView(image: starImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let starBottomLeft: UIImageView = {
        let imageView = UIImageView(image: starImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let heartBottomCenter: UIImageView = {
        let imageView = UIImageView(image: heartImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let starBottomRight : UIImageView = {
        let imageView = UIImageView(image: starImage)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    func setUpView() {
        view.addSubview(heartTop)
        view.addSubview(starTop)
        view.addSubview(starBottomLeft)
        view.addSubview(heartBottomCenter)
        view.addSubview(starBottomRight)
        
        NSLayoutConstraint(item: heartTop, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 0.667, constant: 0).isActive = true
        NSLayoutConstraint(item: heartTop, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 0.5, constant: 0).isActive = true
        
        NSLayoutConstraint(item: starTop, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 0.667, constant: 0).isActive = true
        NSLayoutConstraint(item: starTop, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.5, constant: 0).isActive = true
        
        NSLayoutConstraint(item: starBottomLeft, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: heartBottomCenter, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: starBottomRight, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: starBottomLeft, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 0.5, constant: 0).isActive = true
        NSLayoutConstraint(item: heartBottomCenter, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: starBottomRight, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.5, constant: 0).isActive = true
    }
}
