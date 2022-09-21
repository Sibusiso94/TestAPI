//
//  ViewController.swift
//  SampleAPICall
//
//  Created by Sibusiso Mbonani on 2022/09/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let dp = DataProvider()
    var foodHints = [Hint]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
//        api.performRequest()
        dp.parseJSON { [self] in
            
            if let foodArray = dp.foods {
                foodHints = foodArray.hints
            }
        }
        
        tableView.register(UINib(nibName: "MealViewCell", bundle: nil), forCellReuseIdentifier: "mealCell")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mealCell", for: indexPath) as! MealViewCell
        
        return cell
    }
}

