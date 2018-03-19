//
//  RoundedTextViews.swift
//  listSegue
//
//  Created by Ekene Akpati on 3/19/18.
//  Copyright © 2018 Ekene. All rights reserved.
//

import UIKit

@IBDesignable class RoundedTextViews: UITextView {
    @IBInspectable var corner: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = corner
        }
    }
}
