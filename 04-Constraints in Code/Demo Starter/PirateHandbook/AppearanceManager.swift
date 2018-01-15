//
//  AppearanceManager.swift
//  PirateHandbook
//
//  Created by Dennis Vera on 1/14/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import UIKit

class AppearanceManager {
    
    class func setupAppearance() {
        
        let navBarAppearance = UINavigationBar.appearance(for: UITraitCollection (horizontalSizeClass: .unspecified))
        navBarAppearance.titleTextAttributes = [NSAttachmentAttributeName: UIFont(name: "MarkerFelt-Wide", size: 22)!]
        
        let navBarCompactAppearance = UINavigationBar.appearance(for: UITraitCollection (horizontalSizeClass: .compact))
        navBarCompactAppearance.titleTextAttributes = [NSAttachmentAttributeName: UIFont(name: "MarkerFelt-Thin", size: 14)!]
    }
    
}
