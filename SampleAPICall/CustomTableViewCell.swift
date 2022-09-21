//
//  CustomTableViewCell.swift
//  SampleAPICall
//
//  Created by Sthembiso Ndhlazi on 2022/09/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodText: UILabel!
    
    @IBOutlet weak var foodImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUpCell(foodName:String, pic:String?){
        foodText.text = foodName
        
        if pic != nil{
            foodImg.downloaded(from:pic!)
        } else{
            foodImg.image = UIImage(systemName: "circle.fill")
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
