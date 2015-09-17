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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bnTest = bnTest{
            self.navigationItem.title = bnTest.name
            // Color constants
            let overViewColor = UIColor(red: (70/255.0), green: (71/255.0), blue: (73/255.0), alpha: 1)
            var attributedString = NSAttributedString(string: bnTest.overview, attributes: [NSForegroundColorAttributeName : overViewColor,
                NSFontAttributeName: UIFont(name: "Avenir Next Demi Bold", size: 26)!])
            self.testOverviewLabel.attributedText = attributedString
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "testSteps"{
            var testStepController = segue.destinationViewController as! TestStepsViewController
            testStepController.bnTest = bnTest
        }
    }
}
