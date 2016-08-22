//
//  TermsViewController.swift
//  Week1Dropbox
//
//  Created by Ngai, Sabrina on 8/22/16.
//  Copyright © 2016 Ngai, Sabrina. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    @IBAction func onTapDismissDoneButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        //navigationController!.popViewControllerAnimated(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
