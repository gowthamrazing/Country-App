//
//  CountryTableCell.swift
//  Country App
//
//  Created by Senthilkumar Kalaiselvan on 25/7/24.
//

import Foundation

import UIKit
import SDWebImage

class CountryTableCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblCountryName: UILabel!
    @IBOutlet weak var lblCapital: UILabel!
    @IBOutlet weak var lblCurrency: UILabel!
    @IBOutlet weak var lblPopulation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(model: CountryDetailModel) {
        lblCountryName.text = model.name
        lblCapital.text = model.capital
        lblCurrency.text = model.currency
        lblPopulation.text = "\(model.population ?? 0)"
        
        imgView.sd_setImage(with: URL(string: model.media.flag), placeholderImage: UIImage(named: "placeholder.png"))
    }

}
