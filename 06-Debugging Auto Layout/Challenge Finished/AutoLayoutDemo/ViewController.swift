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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let firstNameLabel = UILabel()
    firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
    firstNameLabel.text = "First Name"
    firstNameLabel.setContentHuggingPriority(251, for: .horizontal)
    view.addSubview(firstNameLabel)
    
    let firstNameTextField = UITextField()
    firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
    firstNameTextField.borderStyle = .roundedRect
    view.addSubview(firstNameTextField)
    
    let lastNameLabel = UILabel()
    lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
    lastNameLabel.text = "Last Name"
    view.addSubview(lastNameLabel)
    
    let lastNameTextField = UITextField()
    lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
    lastNameTextField.borderStyle = .roundedRect
    view.addSubview(lastNameTextField)
    
    let addressLabel = UILabel()
    addressLabel.translatesAutoresizingMaskIntoConstraints = false
    addressLabel.text = "Address"
    view.addSubview(addressLabel)
    
    let addressTextField = UITextField()
    addressTextField.translatesAutoresizingMaskIntoConstraints = false
    addressTextField.borderStyle = .roundedRect
    view.addSubview(addressTextField)
    
    let cityLabel = UILabel()
    cityLabel.translatesAutoresizingMaskIntoConstraints = false
    cityLabel.text = "City"
    view.addSubview(cityLabel)
    
    let cityTextField = UITextField()
    cityTextField.translatesAutoresizingMaskIntoConstraints = false
    cityTextField.borderStyle = .roundedRect
    view.addSubview(cityTextField)
    
    let stateLabel = UILabel()
    stateLabel.translatesAutoresizingMaskIntoConstraints = false
    stateLabel.text = "State"
    view.addSubview(stateLabel)
    
    let stateTextField = UITextField()
    stateTextField.translatesAutoresizingMaskIntoConstraints = false
    stateTextField.borderStyle = .roundedRect
    view.addSubview(stateTextField)
    
    let zipLabel = UILabel()
    zipLabel.translatesAutoresizingMaskIntoConstraints = false
    zipLabel.text = "Zip"
    view.addSubview(zipLabel)
    
    let zipTextField = UITextField()
    zipTextField.translatesAutoresizingMaskIntoConstraints = false
    zipTextField.borderStyle = .roundedRect
    view.addSubview(zipTextField)
    
    let leftButton = UIButton(type: .system)
    // Remember, this line is necessary for views created in code 
    leftButton.translatesAutoresizingMaskIntoConstraints = false
    leftButton.backgroundColor = UIColor.lightGray
    leftButton.setTitleColor(UIColor.white, for: UIControlState())
    leftButton.setTitle("Button", for: UIControlState())
    view.addSubview(leftButton)
    
    let rightButton = UIButton(type: .system)
    // If you don't set this to false, and add your own constraints, the system creates constraints that will conflict with yours 
    rightButton.translatesAutoresizingMaskIntoConstraints = false
    rightButton.backgroundColor = UIColor.lightGray
    rightButton.setTitleColor(UIColor.white, for: UIControlState())
    rightButton.setTitle("Button", for: UIControlState())
    view.addSubview(rightButton)
    
    let container = UILayoutGuide()
    view.addLayoutGuide(container)
    
    firstNameLabel.leadingAnchor.constraint(equalTo: container.leadingAnchor).isActive = true
    
    firstNameTextField.firstBaselineAnchor.constraint(equalTo: firstNameLabel.firstBaselineAnchor).isActive = true
    firstNameTextField.leadingAnchor.constraint(equalTo: firstNameLabel.trailingAnchor, constant: 8).isActive = true
    firstNameTextField.topAnchor.constraint(equalTo: container.topAnchor).isActive = true
    firstNameTextField.trailingAnchor.constraint(equalTo: container.trailingAnchor).isActive = true
    
    lastNameLabel.leadingAnchor.constraint(equalTo: firstNameLabel.leadingAnchor).isActive = true
    addressLabel.leadingAnchor.constraint(equalTo: firstNameLabel.leadingAnchor).isActive = true
    cityLabel.leadingAnchor.constraint(equalTo: firstNameLabel.leadingAnchor).isActive = true
    stateLabel.leadingAnchor.constraint(equalTo: firstNameLabel.leadingAnchor).isActive = true
    zipLabel.leadingAnchor.constraint(equalTo: firstNameLabel.leadingAnchor).isActive = true
    
    lastNameTextField.leadingAnchor.constraint(equalTo: firstNameTextField.leadingAnchor).isActive = true
    addressTextField.leadingAnchor.constraint(equalTo: firstNameTextField.leadingAnchor).isActive = true
    cityTextField.leadingAnchor.constraint(equalTo: firstNameTextField.leadingAnchor).isActive = true
    stateTextField.leadingAnchor.constraint(equalTo: firstNameTextField.leadingAnchor).isActive = true
    zipTextField.leadingAnchor.constraint(equalTo: firstNameTextField.leadingAnchor).isActive = true
    
    lastNameTextField.trailingAnchor.constraint(equalTo: firstNameTextField.trailingAnchor).isActive = true
    addressTextField.trailingAnchor.constraint(equalTo: firstNameTextField.trailingAnchor).isActive = true
    cityTextField.trailingAnchor.constraint(equalTo: firstNameTextField.trailingAnchor).isActive = true
    stateTextField.trailingAnchor.constraint(equalTo: firstNameTextField.trailingAnchor).isActive = true
    zipTextField.trailingAnchor.constraint(equalTo: firstNameTextField.trailingAnchor).isActive = true
    
    lastNameTextField.firstBaselineAnchor.constraint(equalTo: lastNameLabel.firstBaselineAnchor).isActive = true
    lastNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 8).isActive = true
    
    addressTextField.firstBaselineAnchor.constraint(equalTo: addressLabel.firstBaselineAnchor).isActive = true
    addressTextField.topAnchor.constraint(equalTo: lastNameTextField.bottomAnchor, constant: 8).isActive = true
    
    cityTextField.firstBaselineAnchor.constraint(equalTo: cityLabel.firstBaselineAnchor).isActive = true
    cityTextField.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 8).isActive = true
    
    stateTextField.firstBaselineAnchor.constraint(equalTo: stateLabel.firstBaselineAnchor).isActive = true
    stateTextField.topAnchor.constraint(equalTo: cityTextField.bottomAnchor, constant: 8).isActive = true
    
    zipTextField.firstBaselineAnchor.constraint(equalTo: zipLabel.firstBaselineAnchor).isActive = true
    zipTextField.topAnchor.constraint(equalTo: stateTextField.bottomAnchor, constant: 8).isActive = true
    zipTextField.bottomAnchor.constraint(equalTo: container.bottomAnchor).isActive = true
    
    let margins = view.layoutMarginsGuide
    // It can be pretty easy to forget to activate a constraint. If you're having issues, double check that your constraints are right, but also that they're getting activated.
    container.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    container.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
    container.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
    
    leftButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
    leftButton.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant:-20).isActive = true
    
    rightButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
    rightButton.leadingAnchor.constraint(equalTo: leftButton.trailingAnchor, constant: 8).isActive = true
    rightButton.bottomAnchor.constraint(equalTo: leftButton.bottomAnchor).isActive = true
    rightButton.widthAnchor.constraint(equalTo: leftButton.widthAnchor).isActive = true
  }
}

