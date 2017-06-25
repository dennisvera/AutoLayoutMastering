//
//  ViewController.swift
//  VisualFormatGuideChallenge
//
//  Created by Dennis Vera on 6/24/17.
//  Copyright © 2017 Dennis Vera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var upperLeft: UIView!
    private var middle: UIView!
    private var bottomRight: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        createViews()
        constraintViews()
    }
    
    private func createViews() {
        upperLeft = UIView()
        upperLeft.translatesAutoresizingMaskIntoConstraints = false
        upperLeft.backgroundColor = UIColor.red
        view.addSubview(upperLeft)
        
        middle = UIView()
        middle.translatesAutoresizingMaskIntoConstraints = false
        middle.backgroundColor = UIColor.green
        view.addSubview(middle)
        
        bottomRight = UIView()
        bottomRight.translatesAutoresizingMaskIntoConstraints = false
        bottomRight.backgroundColor = UIColor.blue
        view.addSubview(bottomRight)
    }
    
    private func constraintViews() {
        let horizontalGap = 8
        let verticalGap = 20
        let cubeSize = 50
        
        var constraints: [NSLayoutConstraint] = []
        let metrics = ["horizontalGap": horizontalGap, "verticalGap": verticalGap, "tall": cubeSize, "wide": cubeSize]
        let views: [String : UIView] = ["upperLeft": upperLeft, "middle": middle, "bottomRight": bottomRight]
        constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:[upperLeft(wide)]-(horizontalGap)-[middle(wide)]-(horizontalGap)-[bottomRight(wide)]", options: [], metrics: metrics, views: views))
        constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:[upperLeft(tall)]-(verticalGap)-[middle(tall)]-(verticalGap)-[bottomRight(tall)]", options: [], metrics: metrics, views: views))
        
        constraints.append(middle.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(middle.centerYAnchor.constraint(equalTo: view.centerYAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
}

