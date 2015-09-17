//
//  TestOverviewViewController.swift
//  BabyNoggin-Demo
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit

class TestOverviewViewController: UIViewController {

    @IBOutlet weak var testOverviewLabel: UILabel!
    var bnTest:BabyDevelopmentTest?
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bnTest = bnTest{
            self.navigationItem.title = bnTest.name
            self.testOverviewLabel.attributedText = setAttributedtextOverview(bnTest.overview)
        }
    }
    
    // MARK: - User Methods
    @IBAction func backBtnPressed(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "testSteps"{
            let testStepController = segue.destinationViewController as! TestStepsViewController
            testStepController.bnTest = bnTest
        }
    }
    
}
