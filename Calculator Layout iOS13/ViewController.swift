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
        roundButtons()
    }
    func roundButtons() {
        let buttonRows = (stack.arrangedSubviews.filter{$0 is UIStackView}).map{$0 as! UIStackView}
        for row in buttonRows {
            for el in row.arrangedSubviews {
                if el is UIButton {
                    el.layer.cornerRadius = 0.3 * el.bounds.size.height
                    el.clipsToBounds = true
                } else {
                    let subrow = el as! UIStackView
                    for subel in subrow.arrangedSubviews {
                        subel.layer.cornerRadius = 0.3 * subel.bounds.size.height
                        subel.clipsToBounds = true
                    }
                }
            }
        }
    }
}

