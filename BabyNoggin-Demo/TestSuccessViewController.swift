//
//  TestSuccessViewController.swift
//  BabyNoggin-Demo
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit

class TestSuccessViewController: UIViewController {
    
    var bnTest:BabyDevelopmentTest?
    @IBOutlet weak var testSuccessLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let bnTest = bnTest {
            self.navigationItem.title = bnTest.name
            let overViewColor = UIColor(red: (70/255.0), green: (71/255.0), blue: (73/255.0), alpha: 1)
            var attributedString = NSAttributedString(string: bnTest.successMessage, attributes: [NSForegroundColorAttributeName : overViewColor,
                NSFontAttributeName: UIFont(name: "Avenir Next Demi Bold", size: 26)!])
            self.testSuccessLabel.attributedText = attributedString
        }
    }

}
