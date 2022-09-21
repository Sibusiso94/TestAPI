//
//  CustomTableViewCell.swift
//  SampleAPICall
//
//  Created by Sthembiso Ndhlazi on 2022/09/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var foodText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setUpCell(foodName:String){
        foodText.text = foodName
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
