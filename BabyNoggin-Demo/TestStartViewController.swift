//
//  TestStartViewController.swift
//  BabyNoggin-Demo
//
//  Created by Lekshmi Raveendranathapanicker on 9/17/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit

class TestStartViewController: UIViewController {

    let rollingTest = BabyDevelopmentTest.mockSingleTest()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let mediaPlaybackController = segue.destinationViewController as! MediaPlaybackViewController
        mediaPlaybackController.rollingTest = self.rollingTest
    }

}
