//
//  HoursOfServiceViewController.swift
//  ELDHOS
//
//  Created by Vineet Baid on 02/01/18.
//  Copyright © 2018 Vineet Baid. All rights reserved.
//

import UIKit

class HoursOfServiceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //This is the label which shows what is currently selected
    @IBOutlet var aboveTimerDrivingOption: UILabel!
   
    //this is the Timer
    @IBOutlet var timerDriving: UILabel!
    
    //This is the global variable which tells us which option the driver is on
    var currentDrivingOption = "OffDuty"
    
    //---This is hiding the table view which lists all the different driving options ----//
    @IBAction func drivingOptionChange(_ sender: Any) {
        
        drivingOptionsTable.isHidden = !drivingOptionsTable.isHidden
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        drivingOptionsTable.isHidden = true
    }
    
    //END
    
    //Table is here:
    @IBOutlet var drivingOptionsTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO : load all the information from the database based on the username and password from the last page
        // Do any additional setup after loading the view.
        
        //The following is for the table delegate and datasource:
        self.drivingOptionsTable.delegate = self
        self.drivingOptionsTable.dataSource = self
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //----TABLE VIEW STUFF ------------------------------------//
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DrivingOptions().allDrivingOptions.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Driving Options", for: indexPath)
        cell.textLabel?.text = DrivingOptions().allDrivingOptions[indexPath.row]
        
        //        --TODO one day: Need to find a way to grey out the already selected cell. May not work though
//        if cell.textLabel?.text == currentDrivingOption {
//            cell.isUserInteractionEnabled = false
//            cell.textLabel?.isEnabled = false
//        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let tableSelectedDrivingOption = DrivingOptions().allDrivingOptions[indexPath.row]
        //when the picked option is the same as already picked
        if tableSelectedDrivingOption == currentDrivingOption {
            print("Picked the same one")
        }
        else {
            
            //this is what happens when a new option is picked
            
            currentDrivingOption = tableSelectedDrivingOption
            aboveTimerDrivingOption.text! = currentDrivingOption
            
            //segue to get the new controller
            performSegue(withIdentifier: "CreateEvent", sender: nil)
            //here have a function that makes the new modular page pop up
        }
        drivingOptionsTable.isHidden = true
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    
    //END

    
    //---- TODO: THE NEW EVENT WHENEVER SOMETHING Different IS PICKED ------//
    
    func popNewEvent(drivingOption : String){
        //TODO Over here I want to present popover presentation of the event creater
        print(drivingOption)
    }
    
    //---- TODO: Create a function for when Ok is selected - this talks to the database and adds things and also changes the timer
    
    //TODO: Time
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
