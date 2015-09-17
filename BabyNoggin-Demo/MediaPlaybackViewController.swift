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

    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playVideo()
    }
    
     // MARK: - User Methods
    
    func playVideo() {
        let path = NSBundle.mainBundle().pathForResource("baby-rolling-01", ofType:"mp4")
        let url = NSURL.fileURLWithPath(path!)
        self.moviePlayer = MPMoviePlayerController(contentURL: url)
        if let player = self.moviePlayer {
            player.view.frame = CGRect(x: 0, y: 150, width: self.view.frame.size.width, height: 220)
            player.scalingMode = .AspectFill
            player.controlStyle = .Embedded
            self.view.addSubview(player.view)
            player.prepareToPlay()
            player.play()
        } else {
            println("Something went wrong")
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "testOverview" {
            self.moviePlayer?.stop()
        }
    }
}