//
//  Constants.swift
//  BabyNoggin-Demo
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import Foundation
import UIKit

let overViewColor = UIColor(red: (70/255.0), green: (71/255.0), blue: (73/255.0), alpha: 1)
let customRedColor = UIColor(red: (238/255.0), green: (85/255.0), blue: (33/255.0), alpha: 1)

//MARK:- Attributedstring Method

func setAttributedtextOverview (displayText:String) -> NSMutableAttributedString {
    
    // Define paragraph styling
    let paraStyle = NSMutableParagraphStyle()
    paraStyle.firstLineHeadIndent = 20.0
    paraStyle.headIndent = 40.0
    paraStyle.tailIndent = -10.0
    paraStyle.lineSpacing = 7.0
    
    //Define Attributes
    let attributes = [NSFontAttributeName : UIFont.boldSystemFontOfSize(24),
        NSForegroundColorAttributeName : overViewColor,
        NSParagraphStyleAttributeName : paraStyle
    ]
    let attributedString = NSMutableAttributedString(string: displayText, attributes: attributes)
    attributedString.addAttribute(NSForegroundColorAttributeName, value: customRedColor, range: NSRange(location:0,length:2))
      attributedString.addAttribute(NSForegroundColorAttributeName, value: customRedColor, range: NSRange(location:48,length:2))
    return attributedString
}

func setAttributedtext (displayText:String) -> NSAttributedString {
    
    // Define paragraph styling
    let paraStyle = NSMutableParagraphStyle()
    paraStyle.firstLineHeadIndent = 20.0
    paraStyle.headIndent = 25.0
    paraStyle.lineSpacing = 7.0
    paraStyle.lineBreakMode = NSLineBreakMode.ByTruncatingMiddle
    
    //Define Attributes
    let attributes = [NSFontAttributeName : UIFont.boldSystemFontOfSize(24),
        NSForegroundColorAttributeName : overViewColor,
        NSParagraphStyleAttributeName : paraStyle
    ]
    let attributedString = NSAttributedString(string: displayText, attributes: attributes)
    return attributedString

}