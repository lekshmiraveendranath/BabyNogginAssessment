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

     // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bnTest = bnTest {
            self.navigationItem.title = bnTest.name
            self.testSuccessLabel.attributedText = setAttributedtext(bnTest.successMessage)
        }
    }
    
    // MARK: - User Methods
    @IBAction func backBtnPressed(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }

}
