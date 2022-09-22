//
//  PlanCollectionViewCell.swift
//  SampleAPICall
//
//  Created by Pat on 2022/09/22.
//

import UIKit

class PlanCollectionViewCell: UICollectionViewCell {
    @IBOutlet var categoryLabel: UILabel!
    @IBOutlet var categoryImage: UIImageView!
    
    func configureCell(text: String, img: String){
        categoryLabel.text = text
        categoryImage.image = UIImage(systemName: img)
        categoryImage.image?.withTintColor(UIColor.darkGray)
    }
    
}
