//
//  ViewController.swift
//  TCZoomingImageView
//
//  Created by Tianchi Wang on 2018/5/5.
//  Copyright © 2018年 Tianchi Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zoomView: ZoomingImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        2018-02-08_19-43-10.jpg
//        2018-01-01_10-17-26.jpg
//        2015-06-28_21-58-50.jpg
//        24317.jpg
        if let testImage = UIImage.init(named: "2018-01-01_10-17-26.jpg", in: Bundle.main, compatibleWith: nil) {
            zoomView.setUpImageView(withImage: testImage)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

