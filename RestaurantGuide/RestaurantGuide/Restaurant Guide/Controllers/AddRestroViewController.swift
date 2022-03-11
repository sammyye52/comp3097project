//
//  AddRestroViewController.swift
//  Restaurant Guide
//
//  Created by Nilay on 08/03/22.
//

import UIKit

class AddRestroViewController: BaseViewController {
    @IBOutlet weak var titleLabel : UILabel!
    var navigationTitle = "Add Resturant"
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = navigationTitle
       title = navigationTitle
    }
    
    @IBAction func cancel(_sender : UIButton){
        self.navigationController?.popViewController(animated: true)
    }
}
