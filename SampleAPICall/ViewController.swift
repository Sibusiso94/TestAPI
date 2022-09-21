//
//  ViewController.swift
//  SampleAPICall
//
//  Created by Sibusiso Mbonani on 2022/09/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let food = dp.foods?.hints[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
    
        cell.setUpCell(foodName: (food?.food.label)! )
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return dp.foods?.hints.count ?? 0
    }
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var food: UITextField!
    let dp = DataProvider()
//    let api = ApiManager()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
        
       
      
    }
    
    
//    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
//
//        dp.parseJSON(getFood: food.text!) {
//
//            if let foodArray = dp.foods {
//                print(foodArray.hints)
//
//            }
//        }
//    }

    @IBAction func getTapped(_ sender: UIButton) {
        
        dp.parseJSON(getFood: food.text!){ [self] in
            if let foodArray = dp.foods {
                
                for foodHints in foodArray.hints{
                               
                   
                    tableView.reloadData()
                    self.viewDidLoad()
                    
                    }
            }
        }
        
        
       
    }
    
}


