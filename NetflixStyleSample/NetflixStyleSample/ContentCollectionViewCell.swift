//
//  ContentCollectionViewCell.swift
//  NetflixStyleSample
//
//  Created by tmoney on 2023/02/20.
//

import UIKit
import SnapKit

class ContentCollectionViewCell: UICollectionViewCell {
    let imageView = UIImageView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // contentView는 CollectionViewCell의 기본 구성. UI를 변경하려면 contentView에서 바꿔줘야 함
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 5
        contentView.clipsToBounds = true
        
        imageView.contentMode = .scaleToFill
        
        contentView.addSubview(imageView)
        
        imageView.snp.makeConstraints {
            // contentView에 딱 붙게 설정
            $0.edges.equalToSuperview()
        }
    }
}
