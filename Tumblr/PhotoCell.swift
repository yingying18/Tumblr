//
//  PhotoCell.swift
//  Tumblr
//
//  Created by Jasmine Chen on 2/5/19.
//  Copyright © 2019 Jasmine Chen. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    @IBOutlet var photo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
