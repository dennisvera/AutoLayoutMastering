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

class WeatherViewController: UIViewController {
    
    let daysToForecast = 3
    let gap: CGFloat = 8
    var imageViews: [UIImageView] = []
    var imageConstraints: [NSLayoutConstraint] = []
    let leftGapGuide = UILayoutGuide()
    let rightGapGuide = UILayoutGuide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for day in 0..<daysToForecast {
            let weatherImage: UIImageView
            // This would be some logic from a server to determine what image to show - we'll fake it by using one of each
            switch day {
            case 0:
                weatherImage = UIImageView(image: #imageLiteral(resourceName: "weather-sun"))
            case 1:
                weatherImage = UIImageView(image: #imageLiteral(resourceName: "weather-windy"))
            case 2:
                weatherImage = UIImageView(image: #imageLiteral(resourceName: "weather-thunderstorm"))
            default:
                fatalError()
            }
            weatherImage.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(weatherImage)
            imageViews.append(weatherImage)
        }
        
        for imageView in imageViews {
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor).isActive = true
        }
        view.addLayoutGuide(leftGapGuide)
        view.addLayoutGuide(rightGapGuide)
        setupImageConstraints(forSizeClass: traitCollection.horizontalSizeClass)
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        super.willTransition(to: newCollection, with: coordinator)
        if newCollection.horizontalSizeClass != traitCollection.horizontalSizeClass {
            setupImageConstraints(forSizeClass: newCollection.horizontalSizeClass)
        }
    }
    
    private func setupImageConstraints(forSizeClass sizeClass: UIUserInterfaceSizeClass) {
        NSLayoutConstraint.deactivate(imageConstraints)
        imageConstraints.removeAll()
        
        let views: [String: Any] = ["monday": imageViews[0], "tuesday": imageViews[1], "wednesday": imageViews[2], "leftGapGuide": leftGapGuide, "rightGapGuide": rightGapGuide]
        let imageWidth = imageViews[0].image!.imageAsset!.image(with: UITraitCollection(horizontalSizeClass: sizeClass)).size.width
        let metrics = ["fullWidth": imageWidth, "smaller": imageWidth * 0.7, "bigGap": gap * 3, "gap": gap]
        imageConstraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "|[leftGapGuide]-[monday(fullWidth@849)]-(bigGap)-[tuesday(smaller@849)]-(gap)-[wednesday(smaller@849)]-(gap)-[rightGapGuide(==leftGapGuide)]|", options: .alignAllBottom, metrics: metrics, views: views))
        imageConstraints.append(imageViews[0].centerYAnchor.constraint(equalTo: view.centerYAnchor))
        NSLayoutConstraint.activate(imageConstraints)
    }
}















