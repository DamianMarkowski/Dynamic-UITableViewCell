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
    var sectionExpanded = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        loadData()
    }
    
    fileprivate func configureTableView() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = estimatedRowHeight
        tableView.register(UINib(nibName: GlobalConstants.NibNames.SectionHeaderCell, bundle: nil), forCellReuseIdentifier: GlobalConstants.CellsIdentifiers.SectionHeader)
    }
    
    fileprivate func loadData(){
        cities = []
        tableView.reloadData()
    }
    
    @IBAction func refreshButtonClicked(_ sender: Any) {
        loadData()
    }
}

extension CitiesListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: GlobalConstants.CellsIdentifiers.SectionHeader) as! CityTableViewSectionHeaderCell
            cell.titleLabel.text = GlobalConstants.SectionHeaderTitle
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: GlobalConstants.CellsIdentifiers.Regular,
                                                     for: indexPath) as! CityTableViewCell
            let city = cities[indexPath.row - 1]
            cell.configure(city)
            cell.delegate = self
            cell.indexPath = indexPath
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            tableView.beginUpdates()
            let indexPathsToUpdate = [IndexPath(item: 1, section: 0),IndexPath(item: 2, section: 0),IndexPath(item: 3, section: 0)]
            if !sectionExpanded {
                cities = CitiesFactory.createData()
                tableView.insertRows(at: indexPathsToUpdate, with: .automatic)
                sectionExpanded = true
            }else{
                cities = []
                tableView.deleteRows(at: indexPathsToUpdate, with: .automatic)
                sectionExpanded = false
            }
            tableView.endUpdates()
        }
    }
}

extension CitiesListViewController: CityTableViewCellDelegate {
    
    func showHideButtonClicked(_ indexPath: IndexPath) {
        tableView.beginUpdates()
        tableView.endUpdates()
    }
}
