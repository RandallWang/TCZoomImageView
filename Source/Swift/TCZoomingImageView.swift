////
////  ZoomingImageView.swift
////  TCZoomingImageView
////
////  Created by Tianchi Wang on 2018/5/5.
////  Copyright © 2018年 Tianchi Wang. All rights reserved.
////
//
//import UIKit
//
//class TCZoomingImageView: UIView {
//
//    private var baseScrolView: UIScrollView?
//    private var imageView: UIImageView?
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        let baseFrame = CGRect.init(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
//
//        baseScrolView = UIScrollView.init(frame: baseFrame)
//        baseScrolView?.delegate = self
//        baseScrolView?.bounces = false
//        baseScrolView?.bouncesZoom = false
//        baseScrolView?.showsVerticalScrollIndicator = false
//        baseScrolView?.showsHorizontalScrollIndicator = false
//        baseScrolView?.maximumZoomScale = 6
//
//        self.addSubview(baseScrolView!)
//        imageView = UIImageView.init(frame: baseFrame)
//        baseScrolView!.addSubview(imageView!)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        let baseFrame = CGRect.init(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
//
//        baseScrolView = UIScrollView.init(frame: baseFrame)
//        baseScrolView?.delegate = self
//        baseScrolView?.bounces = false
//        baseScrolView?.bouncesZoom = false
//        baseScrolView?.showsVerticalScrollIndicator = false
//        baseScrolView?.showsHorizontalScrollIndicator = false
//        baseScrolView?.maximumZoomScale = 6
//
//        self.addSubview(baseScrolView!)
//        imageView = UIImageView.init(frame: baseFrame)
//        imageView?.contentMode = .scaleAspectFit
//        baseScrolView!.addSubview(imageView!)
//    }
//
//    func setUpImageView(withImage image:UIImage) {
//        imageView?.image = image
//    }
//}
//
//extension TCZoomingImageView: UIScrollViewDelegate {
//    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
//        return imageView
//    }
//}
