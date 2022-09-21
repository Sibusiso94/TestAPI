//
//  ViewController.swift
//  SampleAPICall
//
//  Created by Sibusiso Mbonani on 2022/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    let dp = DataProvider()
//    let api = ApiManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        api.performRequest()
        dp.parseJSON { [self] in
            
            if let foodArray = dp.foods {
                print(foodArray.hints)

            }
        }
    }
}

