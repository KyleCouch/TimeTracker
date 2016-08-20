//
//  ViewController.swift
//  TimeTracker
//
//  Created by Kyle Couch on 8/20/16.
//  Copyright © 2016 Kyle Couch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func AddTask(sender: UIButton) {
        performSegueWithIdentifier("addTask", sender: nil)
    }
}

