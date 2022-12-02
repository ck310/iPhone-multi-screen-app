//
//  PlayersTableViewCell.swift
//  Assignment01
//
//  Created by C Karthika on 16/03/2022.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var playersListView: UIView!
    
    @IBOutlet weak var playersImageView: UIImageView!
    
    @IBOutlet weak var playersNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
