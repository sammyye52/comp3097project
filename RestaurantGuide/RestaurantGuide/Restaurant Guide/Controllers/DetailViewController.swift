//
//  DetailViewController.swift
//  Restaurant Guide
//
//  Created by Nilay on 08/03/22.
//

import UIKit

class DetailViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle("Detail")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showFullMapAction(_ sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "MapVC") as! MapVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func showAlert(sender: AnyObject) {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Share with email", style: .default , handler:{ (UIAlertAction)in
            print("User click Approve button")
        }))
        
        alert.addAction(UIAlertAction(title: "Share with Facebook", style: .default , handler:{ (UIAlertAction)in
            print("User click Edit button")
        }))

        alert.addAction(UIAlertAction(title: "Share with Twitter", style: .default , handler:{ (UIAlertAction)in
            print("User click Delete button")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{ (UIAlertAction)in
            print("User click Dismiss button")
        }))

        
        //uncomment for iPad Support
        //alert.popoverPresentationController?.sourceView = self.view

        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    @IBAction func editAction(_ sender : UIButton){
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddRestroViewController") as! AddRestroViewController
        vc.navigationTitle = "Edit Resturant"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
