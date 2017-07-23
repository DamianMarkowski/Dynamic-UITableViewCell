//
//  CityTableViewCell.swift
//  Dynamic UITableViewCell
//
//  Created by Damian Markowski on 23.07.2017.
//  Copyright © 2017 Damian Markowski. All rights reserved.
//

import UIKit

protocol CityTableViewCellDelegate {
    func showHideButtonClicked(_ indexPath: IndexPath)
}

class CityTableViewCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var population: UILabel!
    @IBOutlet weak var cityDescription: UITextView!
    @IBOutlet weak var showHideButton: UIButton!
    var indexPath: IndexPath!
    var delegate: CityTableViewCellDelegate?
    var data: City?
    var expanded = false
    
    func configure(_ data: City) {
        self.data = data
        name.text = data.name
        population.text = "population: \(data.population)"
        cityDescription.text = data.shortDescription
        let titleForButton = GlobalConstants.ShowMoreButtonTitle
        showHideButton.setTitle(titleForButton, for: .normal)
    }
    
    @IBAction func showHideButtonClicked(_ sender: Any) {
        expanded = !expanded
        cityDescription.text = expanded ? data?.fullDescription : data?.shortDescription
        let titleForButton = expanded ? GlobalConstants.HideButtonTitle : GlobalConstants.ShowMoreButtonTitle
        showHideButton.setTitle(titleForButton, for: .normal)
        self.delegate?.showHideButtonClicked(indexPath)
    }
}
