//
//  InitialViewController.swift
//  CarouselVu
//
//  Created by Vuhuan Pham on 2/13/15.
//  Copyright (c) 2015 Vuhuan Pham. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController, UIScrollViewDelegate, UIActionSheetDelegate {

    @IBOutlet weak var initialScrollView: UIScrollView!
    @IBOutlet weak var introImage: UIImageView!
    @IBOutlet weak var intro_tile1: UIImageView!
    @IBOutlet weak var intro_tile2: UIImageView!
    @IBOutlet weak var intro_tile3: UIImageView!
    @IBOutlet weak var intro_tile4: UIImageView!
    @IBOutlet weak var intro_tile5: UIImageView!
    @IBOutlet weak var intro_tile6: UIImageView!
    
    var scale: CGFloat! = 1.0
    var rotate: CGFloat! = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialScrollView.delegate = self
        initialScrollView.contentSize = introImage.frame.size

        rotateAndMove()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func rotateAndScale() {
//        var scaleTransform = CGAffineTransformMakeScale(scale, scale)
//        var rotateTransform = CGAffineTransformMakeDegreeRotation(rotate)
//        var combinedTransform = CGAffineTransformConcat (scaleTransform, rotateTransform)
//        bunnyRabbit.transform = combinedTransform
//    }

    
    func scrollViewDidScroll(initialScrollView: UIScrollView) {
        
        rotateAndMove()

        
    }

    func rotateAndMove() {
        rotateAndMove1()
        rotateAndMove2()
        rotateAndMove3()
        rotateAndMove4()
        rotateAndMove5()
        rotateAndMove6()
    }
    
    func rotateAndMove1() {
        var rotateTransform = CGAffineTransformMakeRotation((introImage.frame.size.height/2 - (initialScrollView.contentOffset.y))/(introImage.frame.size.height/2) * 0.3)
        var moveTransform = CGAffineTransformMakeTranslation(170 - ((170-45)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y), 400 - ((400-748)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y))
        var combinedTransform = CGAffineTransformConcat(rotateTransform, moveTransform)
        intro_tile1.transform = combinedTransform
        
    }
    
    func rotateAndMove2() {
        var rotateTransform = CGAffineTransformMakeRotation((introImage.frame.size.height/2 - (initialScrollView.contentOffset.y))/(introImage.frame.size.height/2) * 0.6)
        var moveTransform = CGAffineTransformMakeTranslation(70 - ((70-201)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y), 500 - ((500-748)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y))
        var combinedTransform = CGAffineTransformConcat(rotateTransform, moveTransform)
        intro_tile2.transform = combinedTransform
        
    }
    
    func rotateAndMove3() {
        var rotateTransform = CGAffineTransformMakeRotation((introImage.frame.size.height/2 - (initialScrollView.contentOffset.y))/(introImage.frame.size.height/2) * -0.5)
        var moveTransform = CGAffineTransformMakeTranslation(50 - ((50-201)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y), 470 - ((470-826)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y))
        var combinedTransform = CGAffineTransformConcat(rotateTransform, moveTransform)
        intro_tile3.transform = combinedTransform
        
    }
    
    func rotateAndMove4() {
        var rotateTransform = CGAffineTransformMakeRotation((introImage.frame.size.height/2 - (initialScrollView.contentOffset.y))/(introImage.frame.size.height/2) * 1.2)
        var moveTransform = CGAffineTransformMakeTranslation(200 - ((200-45)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y), 380 - ((380-902)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y))
        var combinedTransform = CGAffineTransformConcat(rotateTransform, moveTransform)
        intro_tile4.transform = combinedTransform
        
    }
    
    func rotateAndMove5() {
        var rotateTransform = CGAffineTransformMakeRotation((introImage.frame.size.height/2 - (initialScrollView.contentOffset.y))/(introImage.frame.size.height/2) * 0.8)
        var moveTransform = CGAffineTransformMakeTranslation(20 - ((20-123)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y), 390 - ((390-902)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y))
        var combinedTransform = CGAffineTransformConcat(rotateTransform, moveTransform)
        intro_tile5.transform = combinedTransform
        
    }
    
    func rotateAndMove6() {
        var rotateTransform = CGAffineTransformMakeRotation((introImage.frame.size.height/2 - (initialScrollView.contentOffset.y))/(introImage.frame.size.height/2) * -0.2)
        var moveTransform = CGAffineTransformMakeTranslation(120 - ((120-201)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y), 450 - ((450-902)/(introImage.frame.size.height/2)*initialScrollView.contentOffset.y))
        var combinedTransform = CGAffineTransformConcat(rotateTransform, moveTransform)
        intro_tile6.transform = combinedTransform
        
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
