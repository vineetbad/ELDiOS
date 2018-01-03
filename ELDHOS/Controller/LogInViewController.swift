//
//  ViewController.swift
//  ELDHOS
//
//  Created by Vineet Baid on 26/12/17.
//  Copyright © 2017 Vineet Baid. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //TODO - make the database load up so that we can double check.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButton(_ sender: Any) {
        
        let userNameCheck = userName.text
        let passwordCheck = password.text
        loginCredentialCheck(username: userNameCheck!, password: passwordCheck!)
        
        
    }
    //TODO Need to create a forgot password function
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
    func loginCredentialCheck(username: String, password: String){
        //TODO: check if the username is good or not based on the database.
        //here just checking to see if this is accurate or not
        //TODO: change 5==5 to what the Database checks
        if 5==5 {
            performSegue(withIdentifier: "HOSPage", sender: nil)
        }
        //TODO: Before the segue need to load up all the data of the driver through the database.
        
        else {
            
            //TODO: If innacurate what to do
            //AlertView tells you that your information is inaccurate
            let alertIncorrectCredentials = UIAlertController(title: "Couldn't Log In", message: "The username or password is inaccurate, please try again", preferredStyle: .alert)
            
            let incorrectAction = UIAlertAction(title: "Ok", style: .default, handler: { (UIAlertAction) in
                print("fail")
            })
            
            alertIncorrectCredentials.addAction(incorrectAction)
            present(alertIncorrectCredentials, animated: true, completion: nil)

        }


    }
    
    //This below is the loading view that comes up after the database is checked. Will call this function when
    
    let activityIndicator = UIActivityIndicatorView()

    func databaseLoadingView(){
        //Activity indicator so that the database can load up and the user can't touch anything:
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        activityIndicator.startAnimating()
        UIApplication.shared.beginIgnoringInteractionEvents()
    }
    func databaseDoneLoadingView(){
        activityIndicator.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
    }

    
    
}

