//
//  CustomViewController.swift
//  SampleAPICall
//
//  Created by Tshegofatso Tlhomelang on 2022/09/22.
//

import UIKit

@IBDesignable
class CustomViewController: UIViewController {

    @IBOutlet weak var customViewContainer: UIView!
    
    
override func viewWillAppear(_ animated: Bool) {
 addCustomViewLabel()

    
    }


private func addCustomViewLabel(){

    let bundle = Bundle.main
    guard let view = bundle.loadNibNamed("CustomViewLabel", owner: self)?.first as? CustomViewLabel else { return }

    customViewContainer.addSubview(view)
    view.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([

        view.topAnchor.constraint(equalTo: customViewContainer.topAnchor),
        view.trailingAnchor.constraint(equalTo: customViewContainer.trailingAnchor),
        view.leadingAnchor.constraint(equalTo: customViewContainer.leadingAnchor),
        view.bottomAnchor.constraint(equalTo: customViewContainer.bottomAnchor)

    ])


}
    



}
