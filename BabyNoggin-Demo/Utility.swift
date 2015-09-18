//
//  Utility.swift
//  BabyNoggin-Demo
//
//  Created by Lekshmi Raveendranathapanicker on 9/17/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import Foundation
import UIKit

//MARK:- Attributedstring Method

func setAttributedtextOverview (displayText: [String]) -> NSAttributedString {
    
    // Define paragraph styling
    let paraStyle = NSMutableParagraphStyle()
    paraStyle.firstLineHeadIndent = 20.0
    paraStyle.headIndent = 45.0
    paraStyle.tailIndent = -10.0
    paraStyle.lineSpacing = 2.0
    
    //Define Attributes
    let attributes = [NSFontAttributeName : UIFont.boldSystemFontOfSize(24),
        NSForegroundColorAttributeName : overViewColor,
        NSParagraphStyleAttributeName : paraStyle
    ]
    
    var attributedString = NSMutableAttributedString()
    for oneLine in displayText {
        var instruction = NSMutableAttributedString(string: oneLine + "\n", attributes: attributes)
        instruction.addAttribute(NSForegroundColorAttributeName, value: customRedColor, range: NSRange(location:0, length: 2))
        attributedString.appendAttributedString(instruction)
    }

    return attributedString.copy() as! NSAttributedString
}

func setAttributedtext (displayText: String) -> NSAttributedString {
    
    // Define paragraph styling
    let paraStyle = NSMutableParagraphStyle()
    paraStyle.firstLineHeadIndent = 10.0
    paraStyle.headIndent = 5.0
    
    //Define Attributes
    let attributes = [NSFontAttributeName : UIFont.boldSystemFontOfSize(24),
        NSForegroundColorAttributeName : overViewColor,
        NSParagraphStyleAttributeName : paraStyle
    ]
    
    let attributedString = NSAttributedString(string: displayText, attributes: attributes)
    return attributedString
}