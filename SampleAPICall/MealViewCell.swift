//
//  MealViewCell.swift
//  SampleAPICall
//
//  Created by Sibusiso Mbonani on 2022/09/21.
//

import UIKit

class MealViewCell: UITableViewCell {
    
    @IBOutlet weak var mealView: UIView!
    
    @IBOutlet weak var mealImageView: UIImageView!
    
    @IBOutlet weak var mealTitleLabel: UILabel!
    
    @IBOutlet weak var mealCategoryLabel: UILabel!
    
    @IBOutlet weak var mealCaloryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mealView.layer.cornerRadius = mealView.frame.size.height / 15
        
        mealImageView.layer.cornerRadius = mealImageView.frame.size.height / 2
        mealImageView.clipsToBounds = true
        mealImageView.layer.borderWidth = 3
        mealImageView.layer.borderColor = UIColor.white.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
