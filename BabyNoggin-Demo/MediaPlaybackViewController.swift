//
//  MediaPlaybackViewController.swift
//  BabyNoggin_Sampler
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit
import MediaPlayer

class MediaPlaybackViewController: UIViewController {
    
    var moviePlayer: MPMoviePlayerController?
    let rollingTest = BabyDevelopmentTest.mockSingleTest()
    
    // MARK: - View Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        playVideo()
    }
    
    // MARK: - User Methods
    func playVideo() {
        self.moviePlayer = MPMoviePlayerController(contentURL: rollingTest.videoUrl)
        if let player = self.moviePlayer {
            player.view.frame = CGRect(x: 0, y: 150, width: self.view.frame.size.width, height: 220)
            player.scalingMode = .AspectFill
            player.controlStyle = .Embedded
            self.view.addSubview(player.view)
            player.prepareToPlay()
            player.play()
        } else {
            print("Something went wrong")
        }
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "testOverview" {
            self.moviePlayer?.stop()
            let testStepsController = segue.destinationViewController as! TestOverviewViewController
            testStepsController.bnTest = self.rollingTest
        }
    }
    
}