//
//  ViewController.swift
//  AppStore
//
//  Created by takeru on 2018/06/29.
//  Copyright © 2018年 takeru. All rights reserved.
//

import UIKit

final class FeaturedAppsController: UICollectionViewController {
    
    private var categories: [Category]?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        categories = Category.sampleAppCategories()
        navigationItem.title = "Featured"
        collectionView?.backgroundColor = .white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: CategoryCell.description())
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.description(), for: indexPath) as! CategoryCell
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = categories?.count {
            return count
        }
        return 0
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
}

extension FeaturedAppsController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }
}


