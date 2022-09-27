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
//            foodImg.downloaded(from:pic!)
            foodImg.loadImage(fromURL: pic!)
        } else{
            foodImg.image = UIImage(systemName: "questionmark")
        }
    }
    
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    }

}
