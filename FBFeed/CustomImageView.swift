//
//  CustomImageView.swift
//  FBFeed
//
//  Created by Chhaileng Peng on 1/12/19.
//  Copyright © 2019 Chhaileng Peng. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {
    
    override var intrinsicContentSize: CGSize {
        
        if let myImage = self.image {
            let myImageWidth = myImage.size.width
            let myImageHeight = myImage.size.height
            let myViewWidth = self.frame.size.width
            
            let ratio = myViewWidth / myImageWidth
            let scaledHeight = myImageHeight * ratio
            
            return CGSize(width: myViewWidth, height: scaledHeight - 25)
        }
        
        return CGSize(width: -1.0, height: -1.0)
    }
    
}
