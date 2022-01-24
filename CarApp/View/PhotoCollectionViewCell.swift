//
//  PhotoCollectionViewCell.swift
//  CarApp
//
//  Created by Raghav Saboo on 18/01/22.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotoCollectionViewCell"
    
    public func setCarName(name:String,indexPath:IndexPath)
    {
        let images = [
            UIImage(named: "\(name)pic1.jpeg"),
            UIImage(named: "\(name)pic2.jpeg"),
            UIImage(named: "\(name)pic3.jpeg"),
            UIImage(named: "\(name)pic4.jpeg"),
            UIImage(named: "\(name)pic5.jpeg"),
            UIImage(named: "\(name)pic6.jpeg"),
            UIImage(named: "\(name)main.jpeg"),
        ]
        
        imageView.image = images[indexPath.row]
    
    }
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame : CGRect)
    {
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
}
