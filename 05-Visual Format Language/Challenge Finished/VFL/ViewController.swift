/**
 * Copyright (c) 2017 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import UIKit

class ViewController: UIViewController {
  private var upperLeft: UIView!
  private var middle: UIView!
  private var bottomRight: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    createViews()
    constrainViews()
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
  
  private func constrainViews() {
    let horizontalGap = 8
    let verticalGap = 20
    let cubeSize = 50
    
    var constraints: [NSLayoutConstraint] = []
    let metrics = ["horizontalGap": horizontalGap, "verticalGap": verticalGap, "tall": cubeSize, "wide": cubeSize]
    let views: [String: UIView] = ["upperLeft": upperLeft, "middle": middle, "bottomRight": bottomRight]
    constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:[upperLeft(wide)]-(horizontalGap)-[middle(wide)]-(horizontalGap)-[bottomRight(wide)]", options: [], metrics: metrics, views: views))
    constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:[upperLeft(tall)]-(verticalGap)-[middle(tall)]-(verticalGap)-[bottomRight(tall)]", options: [], metrics: metrics, views: views))
    
    constraints.append(middle.centerXAnchor.constraint(equalTo: view.centerXAnchor))
    constraints.append(middle.centerYAnchor.constraint(equalTo: view.centerYAnchor))
    
    NSLayoutConstraint.activate(constraints)
  }
}
