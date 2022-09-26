//
//  DetailViewController.swift
//  SampleAPICall
//
//  Created by Sthembiso Ndhlazi on 2022/09/26.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var itemImage: UIView!
    @IBOutlet weak var itemsImageView: UIImageView!
    
    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemSlider: UISlider!
    @IBOutlet weak var nutrientLabel2: UILabel!
    
    @IBOutlet weak var nutrientLabel1: UILabel!
    
    @IBOutlet weak var nutrientLabel3: UILabel!
    
    @IBOutlet weak var nutrientLabel4: UILabel!
    
    
    var selectedFood:Hint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if selectedFood?.food.image != nil{
            itemsImageView.downloaded(from:(selectedFood?.food.image!)!)
        } else{
            itemsImageView.image = UIImage(systemName: "questionmark")
        }
       
        itemName.text = selectedFood?.food.label
        nutrientLabel1.text = "Energy: \(selectedFood!.food.nutrients.ENERC_KCAL )"
        nutrientLabel2.text = "\(selectedFood!.food.nutrients.procnt ?? 0.00)"
        nutrientLabel3.text = "\(selectedFood!.food.nutrients.chocdf ?? 0.00)"
        nutrientLabel4.text = "\(selectedFood!.food.nutrients.fat ?? 0.00)"
        
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
