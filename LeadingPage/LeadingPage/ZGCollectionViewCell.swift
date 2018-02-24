//
//  ZGCollectionViewCell.swift
//  LeadingPage
//
//  Created by Magic on 2018/2/23.
//  Copyright © 2018年 magic. All rights reserved.
//

import UIKit
import SnapKit

class ZGCollectionViewCell: UICollectionViewCell {
    public var imageView = UIImageView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
}

extension ZGCollectionViewCell
{
    fileprivate func setupUI()
    {
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsetsMake(0, 0, 0, 0))
        }
    }
}
