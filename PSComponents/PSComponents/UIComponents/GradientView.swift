//
//  GradientView.swift
//  GoogleMapsTut1
//
//  Created by Leela Prasad on 29/05/18.
//  Copyright © 2018 Leela Prasad. All rights reserved.
//

import UIKit

@IBDesignable
open class GradientView: UIView {
  
  
  var gradient = CAGradientLayer()
  
  open var gradientColors: [UIColor]? = [.red, .blue] {
    
    didSet{
      setupGradientView(With: gradientColors, AtLocations: gradientLocations)
    }
    
  }
  open var gradientLocations: [NSNumber]? = [0.75, 1.0] {
    
    didSet{
      setupGradientView(With: gradientColors, AtLocations: gradientLocations)
    }
    
  }
  
  
//  @IBInspectable var gradientFirstColor: UIColor = .white {
//
//    didSet{
//      gradientColors?.removeFirst()
//      gradientColors?.insert(gradientFirstColor, at: 0)
//
//    }
//
//  }
//
//  @IBInspectable var gradientSecondColor: UIColor = .red {
//
//    didSet{
//
//      gradientColors?.removeLast()
//      gradientColors?.insert(gradientSecondColor, at: 1)
//      setupGradientView(With: gradientColors, AtLocations: gradientLocations)
//
//    }
//
//  }
  
  
  //Intialisers
  
    public override init(frame: CGRect) {
    super.init(frame: frame)
    
    setupGradientView(With: gradientColors, AtLocations: gradientLocations)
  }
  
    required public init?(coder aDecoder: NSCoder) {
   super.init(coder: aDecoder)
    
    setupGradientView(With: gradientColors, AtLocations: gradientLocations)
  }
  
    override open func awakeFromNib() {
    super.awakeFromNib()
    
    setupGradientView(With: gradientColors, AtLocations: gradientLocations)
  }
  
  //IBRendering
  
    override open func prepareForInterfaceBuilder() {
    setupGradientView(With: gradientColors, AtLocations: gradientLocations)
  }
  
  
  /**
   
   * It draws gradients on View, with the help of given Parameters
   - Parameter colors : It takes Colors as Array, and then converting to cgColors, draws those colors on Gradient Layer
   - Parameter locations : It is an NSNumbers Array, to get the locations on the View. Ex: 0.75 means 75% on View.
   
   */
  func setupGradientView(With colors: [UIColor]? = [.white, .blue], AtLocations locations: [NSNumber]? = [0.75, 1.0]) {
    
    let cgColors = colors?.map({ $0.cgColor })

    gradient.frame = self.bounds
    gradient.colors = cgColors
    gradient.startPoint = CGPoint.zero
    gradient.endPoint = CGPoint(x: 0, y: 1)
    gradient.locations = locations
    self.layer.addSublayer(gradient)
    
  }
  
  
}
