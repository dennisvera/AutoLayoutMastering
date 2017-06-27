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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    for day in 0..<daysToForecast {
      let weatherImage: UIImageView
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
    
    var constraints = [NSLayoutConstraint]()
    let leftGap = UILayoutGuide()
    view.addLayoutGuide(leftGap)
    let rightGap = UILayoutGuide()
    view.addLayoutGuide(rightGap)
    let views: [String: Any] = ["monday": imageViews[0], "tuesday": imageViews[1], "wednesday": imageViews[2], "leftGap": leftGap, "rightGap": rightGap];
    let imageWidth = imageViews[0].image!.size.width
    let metrics = ["fullWidth": imageWidth, "smaller": imageWidth * 0.7, "bigGap": gap * 3, "gap": gap]
    constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "|[leftGap]-[monday(fullWidth@849)]-(bigGap)-[tuesday(smaller@849)]-(gap)-[wednesday(smaller@849)]-(gap)-[rightGap(==leftGap)]|", options: .alignAllBottom, metrics: metrics, views: views))
    constraints.append(imageViews[0].centerYAnchor.constraint(equalTo: view.centerYAnchor))
    NSLayoutConstraint.activate(constraints)
  }
}
