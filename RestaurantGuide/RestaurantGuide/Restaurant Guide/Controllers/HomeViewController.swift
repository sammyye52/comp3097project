//
//  ViewController.swift
//  Restaurant Guide
//
//  Created by Nilay on 08/03/22.
//

import UIKit

class HomeViewController: BaseViewController{
    @IBOutlet weak var homeTableview : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       title = "Home"
        let logoutBarButtonItem = UIBarButtonItem(title: "Add", style: .done, target: self, action: #selector(addNew))
            self.navigationItem.leftBarButtonItem  = logoutBarButtonItem
        // Do any additional setup after loading the view.
    }
    @objc func addNew(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddRestroViewController") as! AddRestroViewController
        vc.navigationTitle = "Add Resturant"
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

extension HomeViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(withReusable: HomeTableCell.self, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
