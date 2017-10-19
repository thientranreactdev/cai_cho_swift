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
        //setUpView()
        setUpConstraintForMultipleView()
    }
    
    func setUpConstraintForMultipleView()  {
        let firstView = UIView()
        firstView.backgroundColor = .red
        firstView.translatesAutoresizingMaskIntoConstraints = false
        
        let secondView = UIView()
        secondView.backgroundColor = .blue
        secondView.translatesAutoresizingMaskIntoConstraints = false
        
        let thirdView = UIView()
        thirdView.backgroundColor = .yellow
        thirdView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
        
        let views = [ "first" : firstView,
            "second": secondView,
            "third" : thirdView
        ]
        
        let first_view_constraint_H = NSLayoutConstraint.constraints(withVisualFormat: "H:[first(100)]", options: NSLayoutFormatOptions.alignAllCenterY, metrics: nil, views: views)
        let first_view_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:[first(==100)]", options: .alignAllCenterX, metrics: nil, views: views)
        let first_view_centerX_constraint = NSLayoutConstraint(item: firstView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let fist_view_centerY_constraint = NSLayoutConstraint(item: firstView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        
        view.addConstraints(first_view_constraint_V)
        view.addConstraints(first_view_constraint_H)
        view.addConstraint(first_view_centerX_constraint)
        view.addConstraint(fist_view_centerY_constraint)
    }
    
    let appIcon : UIImageView = {
        let image = UIImageView(image: #imageLiteral(resourceName: "Grapevine-Icon"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let appName : UILabel = {
        let label = UILabel()
        label.text = "Grapevine"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let skipButton: UIButton = {
        let button = UIButton()
        button.setTitle("Skip", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let welcomeLabel : UILabel = {
        let label = UILabel()
        label.text = "Welcome to Grapevine"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let summaryLabel : UILabel = {
        let label = UILabel()
        label.text = "Communicate with relatives, friends and colleagues anywhere, anytime."
        label.font = label.font.withSize(12)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let paggingControl : UIImageView = {
        let image = UIImageView(image:#imageLiteral(resourceName: "NavigationDots"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let appImage : UIImageView = {
        let image = UIImageView(image:#imageLiteral(resourceName: "CommunicationIcon"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    func setUpView(){
        let color = UIColor(red: 42/255, green: 103/255, blue: 58/255, alpha: 1)
        view.backgroundColor = color
        
        view.addSubview(appIcon)
        view.addSubview(appName)
        view.addSubview(skipButton)
        
        view.addSubview(appImage)
        view.addSubview(welcomeLabel)
        view.addSubview(summaryLabel)
        view.addSubview(paggingControl)
        
        let views = ["icon" : appIcon,
                     "appName" : appName,
                     "skipButton" : skipButton,
                     "image":appImage,
                     "welcome": welcomeLabel,
                     "summary": summaryLabel,
                     "pagging": paggingControl]
        
        let icon_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[icon(30)]", options: [], metrics: nil, views: views)
        let app_name_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-23-[appName]", options: [], metrics: nil, views: views)
        let skip_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[skipButton]", options: [], metrics: nil, views: views)
        
        view.addConstraints(icon_constraint_V)
        view.addConstraints(app_name_constraint_V)
        view.addConstraints(skip_constraint_V)
        
        let top_header_constraint_H = NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[icon(30)]-[appName]-[skipButton]-10-|", options: [], metrics: nil, views: ["icon": appIcon, "appName": appName, "skipButton": skipButton])
        
        view.addConstraints(top_header_constraint_H)
        
        let app_image_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:[icon]-10-[image]", options: [], metrics: nil, views: views)
        
        view.addConstraints(app_image_constraint_V)
        
        let welcome_constraint_H  = NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[welcome]-10-|", options: [], metrics: nil, views: views)
        let summary_constraint_H = NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[summary]-10-|", options: [], metrics: nil, views: views)
        
        view.addConstraints(welcome_constraint_H)
        view.addConstraints(summary_constraint_H)
        
        let welcome_with_image_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:[image]-10-[welcome]", options: [.alignAllCenterX], metrics: nil, views: views)
        
        view.addConstraints(welcome_with_image_constraint_V)
        
        let welcome_with_summary_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:[welcome]-10-[summary]", options: [.alignAllLeading, .alignAllTrailing], metrics: nil, views: views)
        
        view.addConstraints(welcome_with_summary_constraint_V)
        
        let paging_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:[summary]-15-[pagging(10)]", options: [.alignAllCenterX], metrics: nil, views: views)
        
        view.addConstraints(paging_constraint_V)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

