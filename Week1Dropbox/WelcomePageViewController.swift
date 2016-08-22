//
//  WelcomePageViewController.swift
//  Week1Dropbox
//
//  Created by Ngai, Sabrina on 8/21/16.
//  Copyright © 2016 Ngai, Sabrina. All rights reserved.
//

import UIKit

class WelcomePageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
        
        var pages = [UIViewController]()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.delegate = self
            self.dataSource = self
            
            let page1: UIViewController! = storyboard?.instantiateViewControllerWithIdentifier("Welcome1PageView")
            let page2: UIViewController! = storyboard?.instantiateViewControllerWithIdentifier("Welcome2PageView")
            let page3: UIViewController! = storyboard?.instantiateViewControllerWithIdentifier("Welcome3PageView")
            
            pages.append(page1)
            pages.append(page2)
            pages.append(page3)
            
            setViewControllers([page1], direction: UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)
        }
        
        func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
            let currentIndex = pages.indexOf(viewController)!
            let previousIndex = abs((currentIndex - 1) % pages.count)
            return pages[previousIndex]
            
        }
        
        func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
            let currentIndex = pages.indexOf(viewController)!
            let nextIndex = abs((currentIndex + 1) % pages.count)
            
            print("current index \(currentIndex)")
            
            //prevents from going beyond 3rd page
            if currentIndex == 2 {
                return nil
            }
            
            return pages[nextIndex]
        }
        
        func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
            return pages.count
        }
        
        func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
            return 0
        }
}

//HOW TO STOP IT FROM LOOPING
//TAKE BLACK OUT OF PAGE CONTROL BG

