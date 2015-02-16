//
//  SignInViewController.swift
//  CarouselVu
//
//  Created by Vuhuan Pham on 2/14/15.
//  Copyright (c) 2015 Vuhuan Pham. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIActionSheetDelegate {

    @IBOutlet weak var backSignIn: UIButton!
    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signInContainer: UIView!
    @IBOutlet weak var buttonContainer: UIView!
    
    var originalSignInYCenter: CGFloat!
    var originalButtonYCenter: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        originalSignInYCenter = signInContainer.center.y
        originalButtonYCenter = buttonContainer.center.y

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }
    
    @IBAction func didPressBackButton(sender: AnyObject) {

        navigationController?.popToRootViewControllerAnimated(true)
        
    }
    

    @IBAction func didPressSignInButton(sender: AnyObject) {
        
        loadingIndicator.startAnimating()
        delay(1, { () -> () in
            if (self.emailTextField.text == "vu" && self.passwordTextField.text == "p") {
                self.performSegueWithIdentifier("signInSegue", sender: self)
            } else {
                var alertView = UIAlertView(title: "Oops", message: "email/password is incorrect", delegate: nil, cancelButtonTitle: "OK")
                alertView.show()
            }
            self.loadingIndicator.stopAnimating()
        })
    }
    
    
    @IBAction func didStartEditing(sender: AnyObject) {
        
        if (emailTextField.text.isEmpty || passwordTextField.text.isEmpty){
            signIn.enabled = true
        } else {
            signIn.enabled = true
        }

    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            //Moving the login up just a little since the keyboard didn't overlap the view
            self.signInContainer.center.y = self.signInContainer.center.y - 85
            self.buttonContainer.center.y = self.buttonContainer.center.y - 70
            
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            // Brings the login back to where it was when we started
            self.signInContainer.center.y = self.originalSignInYCenter
            self.buttonContainer.center.y = self.originalButtonYCenter
            }, completion: nil)
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
