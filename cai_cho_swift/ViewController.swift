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
    
    func setUpView(){
        let color = UIColor(red: 42/255, green: 103/255, blue: 58/255, alpha: 1)
        view.backgroundColor = color
        
        view.addSubview(appIcon)
        view.addSubview(appName)
        view.addSubview(skipButton)
        
        let icon_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[icon(30)]", options: [], metrics: nil, views: ["icon": appIcon])
        let app_name_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[appName]", options: [], metrics: nil, views: ["appName": appName])
        let skip_constraint_V = NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[skipButton]", options: [], metrics: nil, views: ["skipButton": skipButton])
        
        view.addConstraints(icon_constraint_V)
        view.addConstraints(app_name_constraint_V)
        view.addConstraints(skip_constraint_V)
        
        let top_header_constraint_H = NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[icon(30)]-[appName]-[skipButton]-10-|", options: [], metrics: nil, views: ["icon": appIcon, "appName": appName, "skipButton": skipButton])
        
        view.addConstraints(top_header_constraint_H)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

