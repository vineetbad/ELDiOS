//
//  HoursOfServiceViewController.swift
//  ELDHOS
//
//  Created by Vineet Baid on 02/01/18.
//  Copyright © 2018 Vineet Baid. All rights reserved.
//

import UIKit

class HoursOfServiceViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet var drivingOptions: UIPickerView!
    @IBOutlet var timerDriving: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO : load all the information from the database based on the username and password from the last page
        // Do any additional setup after loading the view.
        self.drivingOptions.delegate = self
        self.drivingOptions.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //------THIS IS THE PICKER STUFF ------//
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return DrivingOptions().allDrivingOptions.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return DrivingOptions().allDrivingOptions[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let currentDrivingOptionSelected = DrivingOptions().allDrivingOptions[row]
        popNewEvent(drivingOption : currentDrivingOptionSelected)
    }
    
    
    //------ END ------//
    
    
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
