//
//  TripsViewController.swift
//  Design
//
//  Created by Richa Deshmukh on 6/8/20.
//  Copyright © 2020 Richa Deshmukh. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let array = [["Memorial day 2020", "Seattle, Washington, USA"], ["July Euro trip", "Rome, Italy"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 160
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TripsCell", bundle: nil), forCellReuseIdentifier: "TripsCell")
        
        tableView.tableFooterView = UIView()
        self.navigationController?.navigationBar.topItem?.title = "Trips"

    }

}

// MARK:- Table view data source section

extension TripsViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TripsCell", for: indexPath) as! TripsTableViewCell
        
        return cell
    }
}

// MARK:- Table view delegates section

extension TripsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showTripDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination
        destinationVC.navigationItem.title = "Memorial day 2020"
    }
    
}
