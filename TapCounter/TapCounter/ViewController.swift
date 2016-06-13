//
//  ViewController.swift
//  TapCounter
//
//  Created by Wayde C. on 1/1/16.
//  Copyright © 2016 Wayde C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count : Int = 0

    @IBOutlet weak var toStoke: UILabel!
    @IBOutlet weak var display: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        toStoke.userInteractionEnabled = true
        toStoke.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(ViewController.afterStroke(_:))))
    }

    func afterStroke(gesture: UISwipeGestureRecognizer) -> Void {
        count += 1
        display.text = "\(count)"
    }

    // MARK: IBAction
    @IBAction func startCounting(sender: UIButton) {
        count += 1
        display.text = "\(count)"
    }

    @IBAction func reset(sender: UIBarButtonItem) {
        count = 0
        display.text = "\(count)"
    }
}

