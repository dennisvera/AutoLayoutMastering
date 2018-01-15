//
//  AppearanceManager.swift
//  PirateHandbook
//
//  Created by Jerry Beers on 1/24/17.
//  Copyright © 2017 Razeware LLC. All rights reserved.
//

import UIKit

class AppearanceManager {
  class func setupAppearance() {
    let navBarAppearance = UINavigationBar.appearance(for: UITraitCollection(horizontalSizeClass: .unspecified))
    navBarAppearance.titleTextAttributes = [NSFontAttributeName: UIFont(name: "MarkerFelt-Wide", size: 22)!]
    
    let navBarCompactAppearance = UINavigationBar.appearance(for: UITraitCollection(horizontalSizeClass: .compact))
    navBarCompactAppearance.titleTextAttributes = [NSFontAttributeName: UIFont(name: "MarkerFelt-Thin", size: 14)!]
  }
}
