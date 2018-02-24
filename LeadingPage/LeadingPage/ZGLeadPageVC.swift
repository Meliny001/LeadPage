//
//  ZGLeadPageVC.swift
//  LeadingPage
//
//  Created by Magic on 2018/2/23.
//  Copyright © 2018年 magic. All rights reserved.
//

import UIKit

fileprivate let cellID = "ZGCollectionViewCell"
typealias playBtnClickedBlock = ()->(Void)

class ZGLeadPageVC: UIViewController {
    //MARK:-变量
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var playNowBtn: UIButton!
    
    public var block:playBtnClickedBlock?
    
    lazy var images: [String] = {
        let _images = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg"]
        return _images
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        baseSet()
    }

    @IBAction func playNow(_ sender: Any)
    {
        if(block != nil)
        {
           block!()
        }
    }
    
}

extension ZGLeadPageVC
{
    fileprivate func baseSet()
    {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.itemSize = CGSize(width:UIScreen.main.bounds.size.width,height:UIScreen.main.bounds.size.height-20)
        collectionView.register(ZGCollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        pageControl.currentPage = 0
        playNowBtn.isHidden = true
    
    }
}

extension ZGLeadPageVC: UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ZGCollectionViewCell
        cell.imageView.image = UIImage (named: images[indexPath.row])
        
        
        return cell
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let index = Int(scrollView.contentOffset.x / UIScreen.main.bounds.size.width)
        pageControl.currentPage = index
        playNowBtn.isHidden = index != images.count - 1 ? true : false
    }
}
