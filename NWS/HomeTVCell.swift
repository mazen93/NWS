//
//  HomeTVCell.swift
//  LostOrFound
//
//  Created by mac on 7/30/18.
//  Copyright © 2018 mohamed. All rights reserved.
//

import UIKit
import Kingfisher
class HomeTVCell: UITableViewCell {

    @IBOutlet weak var CategoryTitle: UILabel!
    @IBOutlet weak var CategoryId: UILabel!
    @IBOutlet weak var CategoryPhoto: UIImageView!
    
    @IBOutlet weak var arrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
 
        
        CategoryPhoto.layer.cornerRadius=10
        CategoryPhoto.clipsToBounds=true
        
        
        
        let arraw=NSLocalizedString("next", comment: " ")
        arrow.image=UIImage(named: arraw)
        
        
//        CategoryPhoto.layer.borderColor=UIColor.white
//        CategoryPhoto.layer.borderWidth=2
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func set(center:categoryModel){
        CategoryTitle.text = center.title
        CategoryPhoto.image=center.photo
       
        
    }

}
