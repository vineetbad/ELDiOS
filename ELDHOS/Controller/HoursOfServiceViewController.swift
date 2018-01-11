//
//  HoursOfServiceViewController.swift
//  ELDHOS
//
//  Created by Vineet Baid on 02/01/18.
//  Copyright © 2018 Vineet Baid. All rights reserved.
//

import UIKit

class HoursOfServiceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    

    @IBOutlet var timerDriving: UILabel!
    var currentDrivingOptionSelected = "OffDuty"
    @IBAction func drivingOptionChange(_ sender: Any) {
        
        drivingOptionsTable.isHidden = !drivingOptionsTable.isHidden
        
    }
    
    @IBOutlet var drivingOptionsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO : load all the information from the database based on the username and password from the last page
        // Do any additional setup after loading the view.
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
        return cell
        
    }

    
    
    
    //---- DO THE NEW EVENT WHENEVER SOMETHING IS PICKED ------//
    
    func popNewEvent(drivingOption : String){
        //TODO Over here I want to present popover presentation of the event creater
        print(drivingOption)
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
