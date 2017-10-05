//
//  HomeController.swift
//  cai_cho_swift
//
//  Created by mac on 10/5/17.
//  Copyright © 2017 Thien Tran. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Home";
        collectionView?.backgroundColor = UIColor.white;
        collectionView?.register(RowCell.self, forCellWithReuseIdentifier: "cellId")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath);
        return cell;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

class RowCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    let thumnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.orange
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let userProfileImageView : UIImageView = {
        let userImageView = UIImageView()
        userImageView.backgroundColor = UIColor.green
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        return userImageView
    }()
    
    let titleLabel : UILabel = {
        let title = UILabel()
        title.backgroundColor = UIColor.gray
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let subtitleLabel : UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.backgroundColor = UIColor.purple
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        return subtitleLabel
    }()
    
    func setView() {
        addSubview(thumnailImageView)
        addSubview(separatorView)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options:NSLayoutFormatOptions(), metrics: nil, views: ["v0" : thumnailImageView]))
        
        addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-16-[v0]-8-[v1(44)]-16-[v2(1)]|", options:NSLayoutFormatOptions(), metrics: nil, views: ["v0" : thumnailImageView,"v1" : userProfileImageView, "v2":separatorView]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options:NSLayoutFormatOptions(), metrics: nil, views: ["v0" : separatorView]))
        
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"H:|-16-[v0(44)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":userProfileImageView]))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(20)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLable]))
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
//        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0]", options: NSLayoutFormatOptions() , metrics: nil, views: ["v0":titleLable]))
        
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 8))
        
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .right, relatedBy: .equal, toItem: thumnailImageView, attribute: .right, multiplier: 1, constant: 0))
        
        //        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(20)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":titleLable]))
        
        addConstraint(NSLayoutConstraint(item: subtitleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 20))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
