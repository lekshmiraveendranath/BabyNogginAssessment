//
//  TestStepsViewController.swift
//  BabyNoggin_Sampler
//
//  Created by Lekshmi Raveendranathapanicker on 9/16/15.
//  Copyright (c) 2015 Lekshmi Raveendranathapanicker. All rights reserved.
//

import UIKit

class TestStepsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var testQuestionsArray = ["Baby is able to turn shoulders and roll over.","Baby is unable to lift body up with arms.","Baby moves arms","Baby does not move arms."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
    }
    
    // MARK: - Table view data source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testQuestionsArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("testSteps", forIndexPath: indexPath) as! TestStepsTableViewCell
        cell.testStepLabel.text = testQuestionsArray[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            self.performSegueWithIdentifier("testSuccess", sender: self)
        } else if indexPath.row == 1 {
            self.performSegueWithIdentifier("testFailure", sender: self)
        }
    }
    
}
