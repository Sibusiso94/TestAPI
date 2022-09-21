//
//  ViewController.swift
//  SampleAPICall
//
//  Created by Sibusiso Mbonani on 2022/09/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var food: UITextField!
    let dp = DataProvider()
//    let api = ApiManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        food.delegate = self
//        api.performRequest()
      
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
                                    print(foodHints.food.label)
                    }
            }
        }
    }
    
}


