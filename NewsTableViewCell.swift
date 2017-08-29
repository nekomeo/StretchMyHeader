//
//  NewsTableViewCell.swift
//  StretchMyHeader
//
//  Created by Elle Ti on 2017-08-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell
{
    //MARK: - Properties
    var category: String = ""
    {
        didSet
        {
            categoryLabel.text = category
        }
    }
    var headline: String = ""
    {
        didSet
        {
            headlineLabel.text = headline
        }
    }
    
    
    //MARK: - Outlets
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var headlineLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
