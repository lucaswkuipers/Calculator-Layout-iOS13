//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        let stackRows = stack.arrangedSubviews.filter{$0 is UIStackView}.map{$0 as! UIStackView}
        for row in stackRows {
            for col in row.arrangedSubviews {
                let subViewsCount = col.subviews.count
                if subViewsCount == 1 {
                    let btn = col.subviews.first
                    btn?.layer.cornerRadius = 0.45 * btn!.bounds.size.height
                } else {
                    for subview in col.subviews {
                        let btn = subview.subviews.first
                        btn?.layer.cornerRadius = 0.45 * btn!.bounds.size.height
                    }
                }
            }
        }
    }
}
