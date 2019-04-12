//
//  PhotoCell.swift
//  TumblrLab
//
//  Created by Mayank Sharma on 4/11/19.
//  Copyright © 2019 Lily Pham. All rights reserved.
//

import UIKit

class PhotoCell: UITableViewCell {

    //do not name variables 'imageView'
    @IBOutlet weak var photoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
