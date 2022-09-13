//
//  MovieCell.swift
//  Flixster
//
//  Created by PS101k on 9/11/22.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    
    
    @IBOutlet weak var synopsis: UILabel!
    
    
    @IBOutlet weak var poster: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
