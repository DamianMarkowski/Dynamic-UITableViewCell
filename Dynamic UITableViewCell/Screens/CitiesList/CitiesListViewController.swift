//
//  CitiesListViewController.swift
//  Dynamic UITableViewCell
//
//  Created by Damian Markowski on 23.07.2017.
//  Copyright © 2017 Damian Markowski. All rights reserved.
//

import UIKit

class CitiesListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var cities: [City] = []
    let estimatedRowHeight:CGFloat = 140.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        loadData()
    }
    
    fileprivate func configureTableView() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = estimatedRowHeight
    }
    
    fileprivate func loadData(){
        cities = CitiesFactory.createCitiesData()
        tableView.reloadData()
    }
    
    @IBAction func refreshButtonClicked(_ sender: Any) {
        loadData()
    }
}

extension CitiesListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                 for: indexPath) as! CityTableViewCell
        let city = cities[indexPath.row]
        cell.configure(city)
        cell.delegate = self
        cell.indexPath = indexPath
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            cities.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

extension CitiesListViewController: CityTableViewCellDelegate {
    
    func showHideButtonClicked(_ indexPath: IndexPath) {
        tableView.beginUpdates()
        tableView.endUpdates()
        tableView.scrollToRow(at: indexPath, at: .top, animated: true)
    }
}
