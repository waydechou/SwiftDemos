//
//  ViewController.swift
//  NSLayoutConstraints
//
//  Created by Wayde C. on 6/20/16.
//  Copyright © 2016 Wayde C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var rect: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()

        rect = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        rect!.center = view.center
        rect!.backgroundColor = UIColor.blueColor()
        view.addSubview(rect!)

        var constraintWidth = NSLayoutConstraint(item: rect, attribute: Width, relatedBy: Equal, toItem: nil, attribute: NotAnAttribute, multiplier: 0.0, constant: 150)

    }

}

