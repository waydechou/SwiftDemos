//
//  ViewController.swift
//  ShadowPath
//
//  Created by Wayde C. on 6/14/16.
//  Copyright © 2016 Wayde C. All rights reserved.
//

import UIKit
import CoreGraphics

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.layer.shadowOffset = CGSize(width: 2, height: 2)
//        imgView.layer.shadowOpacity = 0.5
//        imgView.layer.cornerRadius = 10
//        imgView.layer.masksToBounds = true
        imgView.layer.shadowPath = UIBezierPath(roundedRect: imgView.bounds, cornerRadius: 10).CGPath
//        imgView.layer.shadowPath = UIBezierPath(
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

