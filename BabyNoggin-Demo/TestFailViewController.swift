//
//  TestFailViewController.swift
//  BabyNoggin-Demo
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit

class TestFailViewController: UIViewController {

    var bnTest: BabyDevelopmentTest?
    @IBOutlet weak var testFailLabel: UILabel!
    @IBOutlet weak var trendImage: UIImageView!
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bnTest = bnTest {
            self.navigationItem.title = bnTest.name
            self.testFailLabel.attributedText = setAttributedtext(bnTest.failureMessage)
            self.testFailLabel.textAlignment = .Center
            self.trendImage.image = bnTest.trendImage
        }
    }
    
    // MARK: - User Methods
    @IBAction func backBtnPressed(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }

}
