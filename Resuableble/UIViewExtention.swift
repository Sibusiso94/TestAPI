//
//  UIViewExtention.swift
//  SampleAPICall
//
//  Created by Tshegofatso Tlhomelang on 2022/09/22.
//

import Foundation
import UIKit

extension UIView {
    
    func loadViewFromNib(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
