//
//  BaseCollectionViewCell.swift
//  SampleAPICall
//
//  Created by Pat on 2022/09/21.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    @IBOutlet var cellImage: UIImageView!
    
    
    func configureView(img: String?){
        if img != nil{
            cellImage.downloaded(from:img!,contentMode: .scaleAspectFill)
        } else{
            cellImage.image = UIImage(systemName: "circle.fill")
        }
    }
}
