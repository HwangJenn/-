//
//  ArticleTableViewCell.swift
//  MVVMexample03
//
//  Created by 황지현 on 2023/06/01.
//
// View

import UIKit

class ArticleTableViewCell:UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
     // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)
    //Configure the view for the selected state
    }
}
