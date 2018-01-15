//
//  DrivingOptions.swift
//  ELDHOS
//
//  Created by Vineet Baid on 04/01/18.
//  Copyright © 2018 Vineet Baid. All rights reserved.
//

import Foundation
struct DrivingOptions {
    let allDrivingOptions = ["OffDuty", "Sleeper", "Driving", "OnDuty"]
    
    enum EachDifferentOption {
        case OffDuty
        case Sleeper
        case OnDuty
        case Driving
    }
    
    
    let reasonSelectedCreateEvent = ["No reason selected", "Rental Vehicle no ELD on-board", "ELD Device Failure", "Missing GPS Location", "Incorrect Status Selected", "Incorrect Data Entered", "Driver Not Logged on", "Engineers Road Test"]
}
