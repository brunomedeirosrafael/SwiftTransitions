//
//  ImageViewController.swift
//  CustomTransition
//
//  Created by Gian Nucci on 18/09/15.
//  Copyright © 2015 Gian Nucci. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var quoteLabel: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.quoteLabel.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.quoteLabel.alpha = 1
        })
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        UIView.animateWithDuration(0.15, animations: { () -> Void in
            self.quoteLabel.alpha = 0
            }) { (finished: Bool) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
        }
    }

}
