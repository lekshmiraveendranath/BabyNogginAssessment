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
    var rollingTest:BabyDevelopmentTest?
    
    // MARK: - View Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        playVideo()
    }
    
    // MARK: - User Methods
    func playVideo() {
        if let rollingTest = rollingTest {
            self.moviePlayer = MPMoviePlayerController(contentURL: rollingTest.videoUrl)
        }
        if let player = self.moviePlayer {
            player.view.frame = CGRect(x: 0, y: 150, width: self.view.frame.size.width, height: 220)
            player.scalingMode = .AspectFill
            player.controlStyle = .Embedded
            player.shouldAutoplay = false
            self.view.addSubview(player.view)
            player.prepareToPlay()
            player.play()
        } else {
            print("Something went wrong")
        }
    }
    
    @IBAction func backBtnPressed(sender: UIBarButtonItem) {
        self.moviePlayer?.stop()
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segueOverviewIdentifier {
            self.moviePlayer?.stop()
            let testStepsController = segue.destinationViewController as! TestOverviewViewController
            testStepsController.bnTest = self.rollingTest
        }
    }
    
}