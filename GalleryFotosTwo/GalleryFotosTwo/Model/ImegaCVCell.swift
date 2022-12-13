//
//  ImegaCVCell.swift
//  GalleryFotosTwo
//
//  Created by Ваня Науменко on 13.12.22.
//

import UIKit

class ImegaCVCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.image.image = nil
    }
    
    func setupFoto(foto:FotosStruct) {
        self.image.image = foto.image
    }

}
