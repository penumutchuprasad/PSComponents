//
//  UIShadowView.swift
//  GoogleMapsTut1
//
//  Created by Leela Prasad on 30/05/18.
//  Copyright © 2018 Leela Prasad. All rights reserved.
//

import UIKit

@IBDesignable
open class UIShadowView: UIView {
    
    
    @IBInspectable open var shadowColor: UIColor? {
        didSet{
            setupViews(color: shadowColor ?? .clear)
        }
    }
    
    public convenience init() {
        self.init(frame: .zero)
        self.setupViews(color: shadowColor ?? .clear)
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupViews(color: shadowColor ?? .clear)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews(color: shadowColor ?? .clear)
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        setupViews(color: shadowColor ?? .clear)
    }
    
    override open func prepareForInterfaceBuilder() {
        setupViews(color: shadowColor ?? .clear)
    }
    
    func setupViews(color: UIColor) {
        guard let colr = shadowColor else { return }
        self.layer.shadowColor = colr.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 5.0
        self.layer.shadowOffset = CGSize(width: 0, height: 5.0)
    }
    
}
