//
//  AppDelegate.swift
//  BabyNoggin_Sampler
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        setupAppearance()
        return true
    }
    
    private func setupAppearance() {
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor(),
            NSFontAttributeName:  UIFont.boldSystemFontOfSize(24)]
        
        // To make navigation bar transparent
        UINavigationBar.appearance().setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().translucent = true
        
        // To make tool bar transparent
        UIToolbar.appearance().setBackgroundImage(UIImage(), forToolbarPosition: .Any, barMetrics: UIBarMetrics.Default)
        UIToolbar.appearance().translucent = true
    }
    
}

