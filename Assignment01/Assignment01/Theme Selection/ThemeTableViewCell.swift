//
//  ThemeTableViewCell.swift
//  Assignment01
//
//  Created by C Karthika on 21/03/2022.
//

import UIKit

class ThemeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var themeLabel: UILabel!
    
    let reuseID = "ThemeTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
