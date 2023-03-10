//
//  MovieCollectionViewCell.swift
//  FilmCollectionView
//
//  Created by Deniz Ata Eş on 9.01.2023.
//

import UIKit
import Kingfisher

class MovieCollectionViewCell: UICollectionViewCell {
    // MARK: Defining properties
    
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var postImageViewHeightLayoutConstraint: NSLayoutConstraint!
    
    override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes)
    {
        super.apply(layoutAttributes)
        if let attributes = layoutAttributes as? PinterestLayoutAttributes {
            ///Changing image height
            postImageViewHeightLayoutConstraint.constant = attributes.photoHeight
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.kf.indicatorType = .activity
        configureView()
        configurePhotoView()
    }
    
    private func configurePhotoView(){
        imageView.layer.cornerRadius = 10
        imageView.layer.shadowRadius = 10
    }
    
    private func configureView(){
        contentView.layer.cornerRadius = 10
        contentView.layer.masksToBounds = true
    }
}
