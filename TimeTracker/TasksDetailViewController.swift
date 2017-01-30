//
//  TasksDetailViewController.swift
//  TimeTracker
//
//  Created by Kyle Couch on 8/22/16.
//  Copyright © 2016 Kyle Couch. All rights reserved.
//

import UIKit
import RealmSwift

class TasksDetailViewController: UIViewController {

    @IBOutlet weak var taskName: UITextField!
    @IBOutlet weak var taskDescription: UITextView!
    @IBOutlet weak var startTaskButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func StartTask(_ sender: UIButton) {
        
        let realm = try! Realm()
        
        let taskID = realm.objects(TasksModel.self).max(ofProperty: "taskID") as Int?
        
        if (taskID != nil)
        {
            print(taskID!);
        }
        
        let task = TasksModel()
        task.taskID = taskID != nil ? taskID! + 1 : 1
        task.name = taskName.text!
        task.taskDescription = taskDescription.text!
        
        realm.beginWrite()
        realm.add(task)
        try! realm.commitWrite()
    }
}
