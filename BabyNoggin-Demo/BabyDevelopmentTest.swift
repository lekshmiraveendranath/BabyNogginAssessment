//
//  BabyDevelopmentTest.swift
//  BabyNoggin_Sampler
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import Foundation
import UIKit

class BabyDevelopmentTest {
    
    let name: String
    let overview: String
    let steps: [String]
    let successMessage: String
    let failureMessage: String
    let videoUrl: NSURL?
    let trendImage: UIImage?
    
    // MARK: Instanciation
    // Designated Initializer
    init(name: String, overview: String, steps: [String], successMessage: String, failureMessage: String, videoUrl: NSURL?, trendImage: UIImage?) {
        self.name = name
        self.overview = overview
        self.steps = steps
        self.successMessage = successMessage
        self.failureMessage = failureMessage
        self.videoUrl = videoUrl
        self.trendImage = trendImage
    }

}

extension BabyDevelopmentTest {
    
    // Mock the data to display for 1 single test
    class func mockSingleTest() -> BabyDevelopmentTest {
        
        let name = "rolling front to back"
        let overview = "1) Place the baby on her stomach on a firm surface.\n2) See if baby rolls over onto her back."
        let testSteps = ["Baby is able to turn shoulders and roll over.","Baby is unable to lift body up with arms.","Baby moves arms","Baby does not move arms."]
        let successMsg = "Your baby is able to roll over from front to back."
        let failureMsg = "All babies develop at different rates."
        
        let path = NSBundle.mainBundle().pathForResource("baby-rolling-01", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        
        let trendImage = UIImage(named: "RollingGraph")
        
        let oneTest = BabyDevelopmentTest(name: name, overview: overview, steps: testSteps, successMessage: successMsg, failureMessage: failureMsg, videoUrl: url, trendImage: trendImage)
        
        return oneTest
    }
    
}
