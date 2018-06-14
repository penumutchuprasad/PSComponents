//
//  CircleView.swift
//  GoogleMapsTut1
//
//  Created by Leela Prasad on 30/05/18.
//  Copyright © 2018 Leela Prasad. All rights reserved.
//

import UIKit

@IBDesignable
public class CircleView: UIView {
  
  
  @IBInspectable public var borderColor: UIColor? {
    didSet{
      setupViews()
    }
  }
  
  @IBInspectable public var cornerRadius: CGFloat = 0 {
    didSet{
      setupViews()
    }
  }
  
  @IBInspectable public var isRounded: Bool = false {
    didSet{
      setupViews()
    }
  }
  
  
  @IBInspectable public var borderWidth: CGFloat = 0 {
    didSet{
      setupViews()
    }
  }
    
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupViews()
    }
  
  func setupViews() {
    
    self.layer.cornerRadius = self.isRounded ? self.frame.width/2 : self.cornerRadius
    self.layer.borderWidth = self.borderWidth
    self.layer.borderColor = self.borderColor?.cgColor
    
  }
  
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()

    }
    
    public convenience init() {
        self.init(frame: .zero)
        setupViews()
    }
  
  
}

















