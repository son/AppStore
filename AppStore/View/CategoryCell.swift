//
//  CategoryCell.swift
//  AppStore
//
//  Created by takeru on 2018/06/29.
//  Copyright © 2018年 takeru. All rights reserved.
//

import UIKit

final class CategoryCell: UICollectionViewCell {

    private var nameLabel: UILabel!
    private var appsCollectionView: UICollectionView!
    private var dividerLineView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraint()
    }
    
    private func setupViews() {
        contentView.backgroundColor = .clear

        nameLabel = UILabel()
        nameLabel.text = "Best New Apps"
        nameLabel.font = UIFont.systemFont(ofSize: 16)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        appsCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        appsCollectionView.backgroundColor = .white
        appsCollectionView.translatesAutoresizingMaskIntoConstraints = false
        appsCollectionView.delegate = self
        appsCollectionView.dataSource = self
        appsCollectionView.register(AppCell.self, forCellWithReuseIdentifier: AppCell.description())
        addSubview(appsCollectionView)

        dividerLineView = UIView()
        dividerLineView.backgroundColor = UIColor(white: 0.4, alpha: 0.4)
        dividerLineView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(dividerLineView)
    }

    private func setupConstraint() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-14-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-14-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : dividerLineView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : appsCollectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[nameLabel(30)][v0][v1(0.5)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : appsCollectionView, "v1": dividerLineView, "nameLabel": nameLabel]))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CategoryCell: UICollectionViewDelegate {
    
}

extension CategoryCell: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppCell.description(), for: indexPath) as! AppCell
        return cell
    }
}

extension CategoryCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: frame.height - 30)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
}
