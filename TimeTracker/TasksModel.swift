//
//  TasksModel.swift
//  TimeTracker
//
//  Created by Kyle Couch on 8/22/16.
//  Copyright © 2016 Kyle Couch. All rights reserved.
//

import Foundation
import RealmSwift

class TasksModel : Object {
    dynamic var taskID = 0
    dynamic var name = ""
    dynamic var taskDescription = ""
    dynamic var startDate = NSDate()
    dynamic var pauseDate: NSDate? = nil
    dynamic var endDate: NSDate? = nil
    dynamic var timeIdle = 0.0
    dynamic var timeSpent = 0.0
}
