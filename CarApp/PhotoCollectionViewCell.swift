//
//  PhotoCollectionViewCell.swift
//  CarApp
//
//  Created by Raghav Saboo on 18/01/22.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotoCollectionViewCell"
    
    
    var carName = ""
    
    func setCarName(name:String)
    {
        carName = name
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
        
        let images = [
        UIImage(named: "Nissan_Sentrapic1.jpeg"),
        UIImage(named: "Nissan_Sentrapic2.jpeg"),
        UIImage(named: "Nissan_Sentrapic3.jpeg"),
        UIImage(named: "Nissan_Sentrapic4.jpeg"),
        UIImage(named: "Nissan_Sentrapic5.jpeg"),
        UIImage(named: "Nissan_Sentrapic6.jpeg"),
        ].compactMap({$0})
        
        imageView.image = images.randomElement()
        
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
