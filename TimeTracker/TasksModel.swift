//
//  TasksModel.swift
//  TimeTracker
//
//  Created by Kyle Couch on 8/22/16.
//  Copyright © 2016 Kyle Couch. All rights reserved.
//

import Foundation
import Realm

class TasksModel {
    dynamic var taskID = 0
    dynamic var name = ""
    dynamic var description = ""
    dynamic var startDate = NSDate()
    dynamic var pauseDate = NSDate()
    dynamic var endDate = NSDate()
    dynamic var timeIdle = 0
    dynamic var timeSpent = 0
}
