//
//  RegisterPageViewController.swift
//  badinClubs
//
//  Created by BHSRam9 on 12/14/16.
//  Copyright © 2016 BHSRam9. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func registerButtonTapped(_ sender: AnyObject) {
        
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        //check for empty fields
        if(userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty)
        {
            // Display Alert message
            
            displayMyAlertMessage("All Fields are Required.");
            
            return;
        }
        
        //check if passwords match
        
        if (userPassword != userRepeatPassword)
        {
        
            //display alert message
            displayMyAlertMessage("Passwords Do Not Match.");

            return;
        }
        
    }
    
    func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIalertController("Alert", message:userMessage, preferredStyle: UIalertControllerStyle.Alert);
        
        
    }
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}







