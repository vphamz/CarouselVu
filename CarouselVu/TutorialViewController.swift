//
//  TutorialViewController.swift
//  CarouselVu
//
//  Created by Vuhuan Pham on 2/15/15.
//  Copyright (c) 2015 Vuhuan Pham. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var welcome1: UIImageView!
    @IBOutlet weak var welcome2: UIImageView!
    @IBOutlet weak var welcome3: UIImageView!
    @IBOutlet weak var welcome4: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var spinButton: UIButton!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 1280, height: 568)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        println(scrollView.contentOffset.x)
        var page = Int(scrollView.contentOffset.x / 320)
        pageControl.currentPage = page
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
