//
//  ViewController.swift
//  UISegmentedControll2
//
//  Created by Mohamed on 8/29/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var segmentedControl : UISegmentedControl = {
        
        var segmentData:[String] = ["Name" , "Price" , "Size"]
        
        let control = UISegmentedControl(items: segmentData)
        control.translatesAutoresizingMaskIntoConstraints = false
        control.backgroundColor = .white
        control.selectedSegmentIndex = 0
        control.layer.cornerRadius = 8
        control.layer.shadowColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        control.layer.shadowOffset = CGSize(width: 10, height: 10)
        control.layer.shadowOpacity = 0.7
        //control.layer.masksToBounds = true
        return control
    }()
    
    fileprivate func makeConstraints(){
        
        NSLayoutConstraint.activate([
            
            // segmentedControl.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor) ,
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            segmentedControl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            segmentedControl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            
            segmentedControl.heightAnchor.constraint(equalTo: view.heightAnchor , multiplier: 0.05)
            
            ])
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //segmentedControl.frame = CGRect(x: 70, y: 120, width: 300, height: 50)
        view.addSubview(segmentedControl)
        makeConstraints()
    }



}

