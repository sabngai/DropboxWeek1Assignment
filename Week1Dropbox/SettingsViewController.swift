//
//  SettingsViewController.swift
//  Week1Dropbox
//
//  Created by Ngai, Sabrina on 8/21/16.
//  Copyright © 2016 Ngai, Sabrina. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController { //UIPageViewController

    @IBOutlet weak var ScrollViewOutlet: UIScrollView!
    
    @IBOutlet weak var scrollViewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollViewOutlet.contentSize = scrollViewImage.image!.size

        // Do any additional setup after loading the view.
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
