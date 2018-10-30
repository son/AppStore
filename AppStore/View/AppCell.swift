//
//  AppCell.swift
//  AppStore
//
//  Created by takeru on 2018/10/22.
//  Copyright © 2018 takeru. All rights reserved.
//

import UIKit

final class AppCell: UICollectionViewCell {

    private var imageView: UIImageView!
    private var nameLabel: UILabel!
    private var categoryLabel: UILabel!
    private var priceLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    func setupViews() {
        imageView = UIImageView()
        imageView.image = UIImage(named: "frozen")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 16
        imageView.layer.masksToBounds = true
        addSubview(imageView)

        nameLabel = UILabel()
        nameLabel.text = "Disney Built It: Frozen"
        nameLabel.font = UIFont.systemFont(ofSize: 14)
        nameLabel.numberOfLines = 2
        addSubview(nameLabel)

        categoryLabel = UILabel()
        categoryLabel.text = "$3.99"
        categoryLabel.textColor = .darkGray
        categoryLabel.font = UIFont.systemFont(ofSize: 13)
        addSubview(categoryLabel)

        priceLabel = UILabel()
        priceLabel.text = "$3.99"
        priceLabel.textColor = .darkGray
        priceLabel.font = UIFont.systemFont(ofSize: 13)
        addSubview(priceLabel)

        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        nameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
        categoryLabel.frame = CGRect(x: 0, y: frame.width + 38, width: frame.width, height: 20)
        priceLabel.frame = CGRect(x: 0, y: frame.width + 56, width: frame.width, height: 20)
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
